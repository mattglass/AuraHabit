# AuraHabit 🌟

> Autonomous Dual-Platform (iOS SwiftUI & Android Jetpack Compose) Habit & Daily Ritual Tracker.
> Built autonomously by **[Native Ready Engine](https://github.com/mattglass/Native-Ready-Engine)** (v0.8.0).

---

## Architecture Overview

AuraHabit is built from a unified `.engine/` design system and operating memory, featuring 100% semantic code parity across iOS and Android:

- **State & Data Fabric**: Kotlin `@Serializable` + `StateFlow` repository on Android, and Swift `Codable` + `@Observable` on iOS.
- **Fluid Motion**: Tactile spring curves, press-scale interactions, and platform-native haptics.
- **Autonomous Transpilation**: UI components transpiled bidirectionally between SwiftUI and Jetpack Compose using `ready transpile`.
- **Mock Edge API**: Zero-dependency Cloudflare Worker & local Node.js API server (`backend/`) simulating cloud sync.

---

## Directory Layout

```text
AuraHabit/
├── .engine/             # Universal operating memory (APP.md, DESIGN.md, ROADMAP.md)
├── app/                 # Jetpack Compose native Android target
│   └── src/main/java/com/aurahabit/app/
│       ├── data/        # Reactive repositories (UserProfile, ItemRecord)
│       └── ui/
│           ├── components/  # Transpiled composables (HabitCard)
│           └── motion/      # Modifier.pressScale() spring effects
├── ios/                 # SwiftUI native iOS target
│   └── Sources/
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
