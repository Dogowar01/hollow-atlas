-- ============================================================
-- HOLLOW ATLAS — Supabase Schema
-- Run this entire file in: Supabase Dashboard → SQL Editor → New query
-- ============================================================


-- ── Extensions ───────────────────────────────────────────────
create extension if not exists "uuid-ossp";


-- ── Users (mirrors auth.users, holds public profile data) ────
create table public.users (
  id           uuid primary key references auth.users(id) on delete cascade,
  username     text unique not null,
  display_name text,
  avatar_url   text,
  bio          text,
  submission_count int not null default 0,
  created_at   timestamptz not null default now()
);

alter table public.users enable row level security;

create policy "Public profiles are viewable by everyone"
  on public.users for select using (true);

create policy "Users can update their own profile"
  on public.users for update using (auth.uid() = id);


-- ── Locations ────────────────────────────────────────────────
create type location_category as enum (
  'haunted', 'abandoned', 'folklore', 'paranormal', 'strange_history'
);

create type location_status as enum ('active', 'pending', 'rejected');

create table public.locations (
  id               uuid primary key default uuid_generate_v4(),
  name             text not null,
  slug             text unique not null,
  tagline          text not null,
  body             text not null,
  ai_narrator      text,
  latitude         double precision not null,
  longitude        double precision not null,
  category         location_category not null,
  report_count     int not null default 0,
  verified         boolean not null default false,
  cover_image_url  text,
  created_by       uuid references public.users(id) on delete set null,
  status           location_status not null default 'active',
  created_at       timestamptz not null default now()
);

alter table public.locations enable row level security;

create policy "Active locations are viewable by everyone"
  on public.locations for select using (status = 'active');

create policy "Admins can manage all locations"
  on public.locations for all using (auth.jwt() ->> 'role' = 'admin');

-- Index for fast map queries
create index locations_geo_idx on public.locations (latitude, longitude);
create index locations_category_idx on public.locations (category);
create index locations_status_idx on public.locations (status);


-- ── Bookmarks ────────────────────────────────────────────────
create table public.bookmarks (
  id          uuid primary key default uuid_generate_v4(),
  user_id     uuid not null references public.users(id) on delete cascade,
  location_id uuid not null references public.locations(id) on delete cascade,
  created_at  timestamptz not null default now(),
  unique (user_id, location_id)
);

alter table public.bookmarks enable row level security;

create policy "Users can view their own bookmarks"
  on public.bookmarks for select using (auth.uid() = user_id);

create policy "Users can insert their own bookmarks"
  on public.bookmarks for insert with check (auth.uid() = user_id);

create policy "Users can delete their own bookmarks"
  on public.bookmarks for delete using (auth.uid() = user_id);


-- ── Submissions ──────────────────────────────────────────────
create type submission_status as enum ('pending', 'approved', 'rejected');

create table public.submissions (
  id             uuid primary key default uuid_generate_v4(),
  user_id        uuid not null references public.users(id) on delete cascade,
  location_name  text not null,
  address_input  text,
  latitude       double precision,
  longitude      double precision,
  category       location_category not null,
  body           text not null,
  ai_narrator    text,
  notes          text,
  status         submission_status not null default 'pending',
  created_at     timestamptz not null default now()
);

alter table public.submissions enable row level security;

create policy "Users can view their own submissions"
  on public.submissions for select using (auth.uid() = user_id);

create policy "Authenticated users can submit"
  on public.submissions for insert with check (auth.uid() = user_id);


-- ── Seed: the 6 mock locations as real rows ──────────────────
insert into public.locations
  (name, slug, tagline, body, ai_narrator, latitude, longitude, category, cover_image_url, report_count, verified, status)
values
(
  'Hollow Creek Mill',
  'hollow-creek-mill',
  'Last operational in 1923. No one left.',
  'The mill wheel still turns on windless nights. Locals say it started again six months after the last worker disappeared — a man named Eustace Pruitt who left his lunch pail on the loading dock and was never seen again. The county coroner listed it as "voluntary departure." His wife never moved.',
  'What lingers here is not grief — it is suspension. A life paused mid-motion. The mill chose to remember him differently than the county did.',
  -41.4332, 147.1441, 'abandoned',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/North_East_Dundas_Tramway%2C_zeehan_%2827907072633%29.jpg/800px-North_East_Dundas_Tramway%2C_zeehan_%2827907072633%29.jpg',
  14, true, 'active'
),
(
  'The Watcher''s Post',
  'the-watchers-post',
  'Rangers reported lights. Then stopped reporting.',
  'Between 1987 and 1991, four different forest rangers filed reports describing amber lights moving in formation above the ridge. In 1991 the reporting stopped — not because the lights stopped, but because the district supervisor instructed rangers to "exercise discretion." The FOIA request in 2019 returned three of four files marked missing.',
  'Silence can be institutional. The absence of record is its own kind of testimony.',
  -41.4280, 147.1520, 'paranormal',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Frederick_Valentich.png/800px-Frederick_Valentich.png',
  31, false, 'active'
),
(
  'Gallows Ridge',
  'gallows-ridge',
  'Seven buried without names.',
  'The ridge served as a secondary execution site during what local histories call "the unquiet summer of 1878." Seven individuals were hanged and buried in unmarked graves. No trial records survive. A schoolteacher named Doris Alwood researched the matter in 1953 and began sleepwalking — always toward the ridge. She relocated to another county.',
  'Unnamed graves are not peaceful. They ask something of every person who passes over them.',
  -41.4410, 147.1390, 'haunted',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/PortArthurPenitentiary.jpg/800px-PortArthurPenitentiary.jpg',
  22, true, 'active'
),
(
  'Sable Lake',
  'sable-lake',
  'Children are warned not to swim here. Always have been.',
  'The warning predates living memory. Every grandmother in the valley carried it forward: do not swim in Sable Lake after the dragonflies leave. They leave in late August. In 1961, a twelve-year-old boy swam in September on a dare. He came back speaking a language his parents could not identify. It passed after three days. He never spoke of it again.',
  'Some places have rules older than the people who live near them. The rules outlast the reasons.',
  -41.4200, 147.1610, 'folklore',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Thylacinus.jpg/800px-Thylacinus.jpg',
  8, false, 'active'
),
(
  'The Belling House',
  'the-belling-house',
  'Still occupied. Built over the old chapel.',
  'The current owners report that bells ring inside the walls between 3 and 4 AM on dates corresponding to the old liturgical calendar — a calendar they were unaware of when they bought the house. A previous tenant left a note inside a kitchen cupboard: "It rings for everyone. Don''t ask what it wants."',
  'Some houses are still keeping appointments made long before you arrived.',
  -41.4370, 147.1470, 'haunted',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Willow_Court.png/800px-Willow_Court.png',
  19, true, 'active'
),
(
  'Rotherstone Sanatorium',
  'rotherstone-sanatorium',
  'Closed 1971. Records sealed until 2041.',
  'The sanatorium operated for 44 years. The last administrator resigned without explanation in March 1971 and moved abroad. When county officials entered to begin decommissioning, they found every clock stopped at 4:14 AM. The cafeteria had been set for breakfast.',
  'Time does not stop when places close. It simply stops being shared.',
  -41.4150, 147.1350, 'abandoned',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Spray_Tunnel_%2829602663214%29.jpg/800px-Spray_Tunnel_%2829602663214%29.jpg',
  47, true, 'active'
);
