-- Ejecutar completo en Supabase > SQL Editor > New query
create extension if not exists pgcrypto;
create table if not exists public.pistas_tesoro(
 id uuid primary key default gen_random_uuid(),
 nombre_punto text not null,
 latitud double precision not null check(latitud between -90 and 90),
 longitud double precision not null check(longitud between -180 and 180),
 color_recorrido text not null check(color_recorrido in('azul','verde')),
 numero_orden integer not null check(numero_orden>0),
 texto_pista text not null,
 created_at timestamptz not null default now()
);
alter table public.pistas_tesoro enable row level security;
drop policy if exists "lectura pistas" on public.pistas_tesoro;
drop policy if exists "insertar pistas" on public.pistas_tesoro;
drop policy if exists "editar pistas" on public.pistas_tesoro;
drop policy if exists "eliminar pistas" on public.pistas_tesoro;
-- Políticas abiertas para la práctica del examen; en producción usar autenticación.
create policy "lectura pistas" on public.pistas_tesoro for select to anon,authenticated using(true);
create policy "insertar pistas" on public.pistas_tesoro for insert to anon,authenticated with check(true);
create policy "editar pistas" on public.pistas_tesoro for update to anon,authenticated using(true) with check(true);
create policy "eliminar pistas" on public.pistas_tesoro for delete to anon,authenticated using(true);
-- Coordenadas de ejemplo para practicar; sustituir por GPS real del parque.
insert into public.pistas_tesoro(nombre_punto,latitud,longitud,color_recorrido,numero_orden,texto_pista) values
('Banco del parque',-25.2867,-57.3333,'azul',1,'Buscá el siguiente lugar donde todos pueden sentarse.'),
('Banco - pista azul 2',-25.2872,-57.3340,'azul',2,'La siguiente pista está cerca de un lugar con sombra.'),
('Árbol grande',-25.2859,-57.3325,'verde',1,'Buscá el árbol más grande del recorrido.');