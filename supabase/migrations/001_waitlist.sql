-- Ejecuta este archivo en el SQL Editor de tu proyecto Supabase.
-- El navegador solo puede llamar a join_waitlist; no leer la lista de correos.

begin;

create table if not exists public.waitlist (
  id uuid primary key default gen_random_uuid(),
  email text not null unique,
  created_at timestamptz not null default now(),
  constraint waitlist_email_length check (char_length(email) between 3 and 254),
  constraint waitlist_email_format check (email ~ '^[^[:space:]@]+@[^[:space:]@]+\.[^[:space:]@]+$'),
  constraint waitlist_email_normalized check (email = lower(btrim(email)))
);

alter table public.waitlist enable row level security;
revoke all on table public.waitlist from anon, authenticated;

-- SECURITY DEFINER permite un INSERT limitado sin abrir permisos de lectura.
-- No devuelve datos ni revela si el correo ya estaba inscrito.
create or replace function public.join_waitlist(p_email text)
returns void
language plpgsql
security definer
set search_path = ''
as $$
begin
  if p_email is null
    or char_length(btrim(p_email)) not between 3 and 254
    or btrim(p_email) !~ '^[^[:space:]@]+@[^[:space:]@]+\.[^[:space:]@]+$'
  then
    raise exception 'Invalid email' using errcode = '22023';
  end if;

  insert into public.waitlist (email)
  values (lower(btrim(p_email)))
  on conflict (email) do nothing;
end;
$$;

revoke all on function public.join_waitlist(text) from public;
grant execute on function public.join_waitlist(text) to anon, authenticated;

commit;
