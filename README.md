# AuraHabit 🌟

> Autonomous Dual-Platform (iOS SwiftUI & Android Jetpack Compose) Habit & Daily Ritual Tracker.
> Built autonomously by **[Native Ready Engine](https://github.com/mattglass/Native-Ready-Engine)** (v0.8.0).

---

## Architecture Overview

AuraHabit is built from a unified `.engine/` design system and operating memory, featuring 100% semantic code parity across iOS and Android:

- **State & Data Fabric**: Kotlin `@Serializable` + `StateFlow` repository on Android, and Swift `Codable` + `@Observable` on iOS.
- **Fluid Motion**: Tactile spring curves, press-scale interactions, and platform-native haptics.
- **Autonomous Transpilation**: UI components transpiled bidirectionally between SwiftUI and Jetpack Compose using `ready transpile`.
- **Full Multi-Screen Suite**:
  - **Today / Dashboard**: Daily Aura score ring, Level badge, streak indicator, and ritual check-in cards.
  - **Analytics**: Key metric counters (Streak, Completion Rate) and weekly activity heatmaps.
  - **Settings**: Edge Cloud Sync status, health check ping, and engine metadata.
- **Live Networking Client**: `HabitSyncClient` (iOS `URLSession` & Android `HttpURLConnection`) connecting live to `backend/server.js`.
- **Zero-Dependency Mock Edge Server**: Local Node HTTP server and Cloudflare Worker with realistic seed rituals.

---

## Directory Layout

```text
AuraHabit/
├── .engine/             # Universal operating memory (APP.md, DESIGN.md, ROADMAP.md)
├── app/                 # Jetpack Compose native Android target
│   └── src/main/java/com/aurahabit/app/
│       ├── MainActivity.kt
│       ├── data/        # Reactive repositories & HabitSyncClient
│       └── ui/
│           ├── navigation/  # AuraHabitNavShell (NavigationBar)
│           ├── screens/     # DashboardScreen, AnalyticsScreen, SettingsScreen
│           ├── components/  # Transpiled composables (HabitCard)
│           └── motion/      # Modifier.pressScale() spring effects
├── ios/                 # SwiftUI native iOS target
│   └── Sources/
│       ├── App/         # AuraHabitApp.swift & MainTabView.swift
│       ├── Data/        # HabitSyncClient.swift
│       ├── Screens/     # DashboardView, AnalyticsView, SettingsView
│       └── Views/       # HabitCard.swift
└── backend/             # Cloudflare Worker & local Node mock server
```

---

## Quick Start

### 1. Run Mock Edge API
```bash
node backend/server.js
# Listening on http://localhost:8787
```

### 2. Verify with Ready Engine CLI
```bash
ready test --suite all
```
