# Bullseye

Hand-drawn anime cel-shaded archery in the browser.

**Play:** open [`index.html`](./index.html) (needs network for Three.js + GSAP CDNs).

## Modes

| Mode | Description |
|------|-------------|
| **Campaign** | 6 escalating rounds (tutorial optional) |
| **Limited Arrows** | Same structure, finite ammo per round |
| **Endless** | Waves that ramp forever |

## Controls

| Input | Action |
|--------|--------|
| **A / D** or **← / →** or on-screen pads | Strafe left / right only |
| Move mouse / touch | Aim |
| Hold click | Draw (red zone = perfect release) |
| Release | Fire — longer draw = more power |
| **Esc** / pause button | Pause |
| **M** | Mute |

## Features

- Cel toon shading + ink outlines, trajectory preview while drawing
- Perfect-release bonus, combos, screen shake & ink bursts
- Wind (flags, grass, leaves) on later rounds
- Target variety: static, moving, spin, pop-up, balloons, pots, double-face
- Local high scores, unlockable fletching cosmetics
- Aim assist + colorblind ring option
- Shareable end-card PNG download
- Mobile strafe pads + pause HUD

## Stack

Three.js · GSAP · procedural Web Audio · single file, no build.
