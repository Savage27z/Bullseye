# Bullseye

Hand-drawn anime cel-shaded archery in the browser.  
Works on **desktop and mobile** (touch aim, strafe pads, safe areas).

**Play:** open [`index.html`](./index.html) (needs network for Three.js + GSAP CDNs), or deploy to Vercel/GitHub Pages.

---

## Player name & leaderboards

1. Enter an **archer name** on the menu (required, 2–16 chars).
2. Name is saved in the browser and restored next visit.
3. **This device** tab — local top scores (`localStorage`).
4. **Global** tab — shared online board via **Supabase** (optional).

### Set up global leaderboard (Supabase, free)

1. Create a project at [supabase.com](https://supabase.com).
2. Open **SQL Editor**, paste and run [`supabase-setup.sql`](./supabase-setup.sql).
3. Go to **Project Settings → API**:
   - Copy **Project URL**
   - Copy **anon public** key
4. In the game menu, open **Online board setup (Supabase)**, paste both, click **Save & connect**.

Credentials are stored only in your browser (`localStorage`).  
The anon key is meant to be public; table RLS only allows **read + insert**.

You can also hardcode defaults in `index.html`:

```js
const SUPABASE_DEFAULT = {
  url: "https://YOUR_PROJECT.supabase.co",
  anonKey: "YOUR_ANON_KEY",
};
```

---

## Modes

| Mode | Description |
|------|-------------|
| **Campaign** | 6 escalating rounds (tutorial optional) |
| **Limited Arrows** | Finite ammo per round |
| **Endless** | Waves that ramp forever |

## Controls

| Input | Action |
|--------|--------|
| **A / D** or **← / →** or on-screen pads | Strafe left / right only |
| Mouse / finger drag | Aim |
| Hold on the range | Draw bow |
| Release | Fire (red zone on meter = perfect) |
| Pause button / **Esc** | Pause |
| **M** | Mute |

### Mobile

- Large strafe pads + pause control  
- Touch-to-aim while drawing  
- Safe-area padding (notches)  
- Aim assist enabled by default on touch devices  
- Menu scrolls; 16px inputs (no iOS zoom)  
- `100dvh` + overscroll lock while playing  

## Features

- Cel toon shading + ink outlines  
- Trajectory preview, perfect release, combos, hit juice  
- Wind tells (flags, grass, leaves)  
- Targets: static, moving, spin, pop-up, balloons, pots, double-face  
- Cosmetics unlock by score  
- Colorblind rings option  
- Shareable end-card PNG (includes your name)  

## Stack

Three.js · GSAP · Web Audio · Supabase REST (optional) · single `index.html`
