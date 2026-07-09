# Bullseye

Hand-drawn anime cel-shaded archery in the browser.

**Play:** open [`index.html`](./index.html) in a modern browser (needs network for Three.js + GSAP CDNs).

## Controls

| Input | Action |
|--------|--------|
| Move mouse | Aim |
| Hold click / touch | Draw the bow |
| Release | Fire (longer draw = more power) |

Arrows follow gravity; later rounds add wind, moving targets, and balloons. Chain hits for combos.

## Stack

- Three.js (toon shading + ink outlines)
- GSAP (wobbly speech-bubble UI)
- Procedural Web Audio (bow creak, whoosh, thunk)

Single file — no build step.
