# Design System: AuraHabit

> **Visual source of truth:** Google Stitch Project `18210720106342944745`
> **Evidence:** Live Stitch Screen Generation (Gemini 3.8 Flash), `.engine/intake/screenshots/stitch-cosmic-wellness-home.png`
> **Confidence:** OBSERVED (Direct Stitch Design System & Screen Evidence)

## 1. Visual Theme & Atmosphere
`AuraHabit` feels like:
- Ambient, cosmic mindfulness with zero visual clutter
- Bioluminescent depth: deep dark space punctuated by glowing violet, indigo, and cyan energy
- Tactile, glassmorphic elevated containers with fine luminous borders
- Calming ritual progression, transforming daily habits into living artwork
- Modern edge-to-edge Material 3 composition on mobile

The interface feels like:
- A high-end personal sanctuary or futuristic biometric dashboard
- Fluid, organic, and encouraging rather than punitive or stressful
- Tactile haptic feedback on completion

It should not feel like:
- A generic corporate productivity spreadsheet
- Flat, dull gray enterprise software
- Cluttered with ads, aggressive badges, or jarring red alerts

## 2. Color Palette & Roles (Material 3)

### Primary & Accent Family
- **Bioluminescent Indigo** (`#6366F1`) — Primary accent, hero gradients, FAB fill
- **Electric Violet** (`#8B5CF6`) — Secondary accent, active ritual highlights, badge glow
- **Cyan Aurora** (`#06B6D4`) — Tertiary accent, biometric indicators, active timer track, completion ring glow
- **Soft Indigo Tint** (`#C0C1FF`) — Primary container text, active tab pill icons

### Surface & Background Family
- **Cosmic Canvas** (`#0B0F19`) — Main dark application background
- **Surface Container Lowest** (`#0A0E18`) — Background beneath inset scrolling groups
- **Surface Container Low** (`#171B26`) — Tab bar backdrop, inactive card surfaces
- **Surface Container** (`#151C2C` / `#1C1F2A`) — Standard elevated card container
- **Surface Container High** (`#262A35`) — Modal sheets, active dialogs
- **Surface Container Highest** (`#313540`) — Elevated pill chips, dropdown menus

### Text & Outline Family
- **Starlight White** (`#DFE2F1` / `#F8FAFC`) — High-contrast primary copy (95% opacity)
- **Starlight Slate** (`#94A3B8`) — Secondary metadata, timestamps, subtitles (75% opacity)
- **Muted Twilight** (`#475569`) — Inactive icons, disabled text
- **Luminous Outline** (`rgba(99, 102, 241, 0.25)`) — Fine 1px gradient card border
- **Subtle Outline** (`#464554`) — Standard divider, inactive chip border

### State Family
- **Ritual Completed** (`#8B5CF6` / `#06B6D4`) — Glowing completion checkmark
- **Streak Fire** (`#F97316`) — 14-day fire streak counter badge
- **Caution / Attention** (`#FBBF24`) — Upcoming reminder / scheduled cutoff

## 3. Typography Rules (Material 3 Scale)

- **Font Family:** Roboto Flex / System Sans
- **Display Large (`57px`, 400 weight, -0.25px tracking):** Aura Score numbers
- **Headline Medium (`24px`, 600 weight):** Section titles ("Morning Rituals", "Evening Rituals")
- **Title Large (`22px`, 500 weight):** Card headers, ritual names
- **Body Large (`16px`, 400 weight):** Subtitles, quotes, descriptions
- **Label Large (`14px`, 600 weight):** Pill buttons, tab labels, action CTAs

## 4. Elevation, Geometry & Shapes

- **Card Radii:** 24dp to 32dp continuous corner curvature for containers
- **Button & Chip Radii:** Full pill (`ROUND_FULL` / 9999dp)
- **Borders:** 1px luminous gradient stroke (`linear-gradient(135deg, rgba(99, 102, 241, 0.35), rgba(6, 182, 212, 0.15))`)
- **Glow & Depth:** Hardware-accelerated backdrop blur (`RenderEffect` on Android 12+, `.ultraThinMaterial` in SwiftUI) over `#151C2C`
- **Minimum Touch Target:** 48×48dp enforced on all interactive switches and toggles

## 5. Visual Screen Inventory & Evidence

1. **Screen 1: Daily Aura Dashboard (Home)**
   - **Stitch Resource:** `projects/18210720106342944745/screens/7c6f05785f794c4e97c9b0e1e9f1a04d`
   - **Local Evidence:** `.engine/intake/screenshots/stitch-cosmic-wellness-home.png`
   - **Hero Feature:** Circular Daily Aura Progress Ring (92% "Radiant Aura", Level 4 Master badge, 14-day streak)
   - **Ritual Lists:** Morning Rituals (2/2 completed), Evening Rituals (1/2 in-progress with progress bar and Resume CTA)
   - **Bottom Nav:** Expressive active pill for "Today", standard tabs for "Analytics" and "Settings"

2. **Screen 2: Aura Analytics & Growth**
   - **Stitch Resource:** `projects/18210720106342944745/screens/e1a4d6f83b2c45129871a2c89f5d1e0a`
   - **Hero Feature:** Weekly Average Consistency trend chart, 14-day streak card, 42-ritual weekly total, 7-day consistency heatmap
