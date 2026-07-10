-- Bullseye global leaderboard
-- Run this in Supabase: SQL Editor → New query → Run

create table if not exists public.scores (
  id bigint generated always as identity primary key,
  name text not null check (char_length(name) between 2 and 16),
  score integer not null check (score >= 0 and score < 10000000),
  mode text not null default 'campaign',
  combo integer not null default 0,
  bulls integer not null default 0,
  perfects integer not null default 0,
  round integer not null default 1,
  created_at timestamptz not null default now()
);

create index if not exists scores_score_desc_idx on public.scores (score desc, created_at desc);

-- Public read + insert only (no update/delete from clients)
alter table public.scores enable row level security;

drop policy if exists "Public read scores" on public.scores;
create policy "Public read scores"
  on public.scores for select
  to anon, authenticated
  using (true);

drop policy if exists "Public insert scores" on public.scores;
create policy "Public insert scores"
  on public.scores for insert
  to anon, authenticated
  with check (
    char_length(name) between 2 and 16
    and score >= 0
    and score < 10000000
  );

-- Optional: block spam later with rate limits / edge functions.
