# Hollow Atlas

A cinematic field guide to haunted places, abandoned sites, folklore, and strange history across Australia.

## Setup

```bash
# 1. Install dependencies (required after every clone/pull)
npm install

# 2. Create your environment file (optional — app runs in demo mode without it)
cp .env.example .env.local
# then fill in your Supabase URL and anon key

# 3. Start the dev server
npm start
```

Open the app in Expo Go on your phone by scanning the QR code, or press `a` for Android emulator / `i` for iOS simulator.

## Environment variables

| Variable | Purpose |
|---|---|
| `EXPO_PUBLIC_SUPABASE_URL` | Your Supabase project URL |
| `EXPO_PUBLIC_SUPABASE_ANON_KEY` | Your Supabase anon key |

Without these, the app loads in **demo mode** using built-in sample locations.

## Project structure

```
app/
  _layout.tsx          Root layout (fonts, providers, Stack navigator)
  (tabs)/
    _layout.tsx        Tab bar layout
    index.tsx          Map screen (main screen)
    discover.tsx       Browse & filter locations
    saved.tsx          Bookmarked locations
    submit.tsx         Submit a new location
  location/[slug].tsx  Location detail screen
  auth/
    login.tsx
    signup.tsx

src/
  components/          Shared UI components
  constants/theme.ts   Colors, fonts, spacing, category tokens
  context/             Auth + user location providers
  hooks/               useLocations, useBookmarks
  lib/supabase.ts      Supabase client
  types/               TypeScript types
```
