# AuraHabit Roadmap

> **Purpose:** Living task queue for AuraHabit delivery and refinement.

## Status Meanings
- `ready` — next available task
- `in_progress` — currently active baton
- `blocked` — waiting on clarification, assets, or technical resolution
- `done` — completed and recorded

---

## Task APP-001: Native Scaffolding & Dual-Platform Architecture
- **status:** `done`
- **priority:** `high`
- **feature:** `app-shell-and-native-project`
- **summary:** Scaffold dual-platform entry points, Compose & SwiftUI shells, and initial directory structure.
- **evidence:** `MainActivity.kt`, `AuraHabitApp.swift`, `AppNavigation.kt`, `MainTabView.swift`.

## Task APP-002: Stitch Design Intake & Cosmic Dark Theme System
- **status:** `done`
- **priority:** `high`
- **feature:** `design-system-intake`
- **summary:** Generate Stitch concept screens (Dashboard & Analytics), extract design tokens, download screenshot evidence, and synchronize `.engine/DESIGN.md`.
- **evidence:** Stitch project `18210720106342944745`, `.engine/intake/screenshots/stitch-cosmic-wellness-home.png`.

## Task APP-003: Daily Aura Dashboard Visual Realization
- **status:** `ready`
- **priority:** `high`
- **feature:** `dashboard-visual-enhancement`
- **summary:** Enhance `DashboardScreen.kt` and `DashboardView.swift` to mirror Stitch screen `7c6f05785f794c4e97c9b0e1e9f1a04d` with glowing radial progress ring, bio-rhythm subtitle, and active reading progress bar.
- **destination:** `DashboardScreen.kt`, `DashboardView.swift`

## Task APP-004: Weekly Rhythm & Heatmap Analytics
- **status:** `ready`
- **priority:** `medium`
- **feature:** `analytics-and-growth`
- **summary:** Enhance `AnalyticsScreen.kt` and `AnalyticsView.swift` with 7-day spline curve and category balance radar matching Stitch screen `e1a4d6f83b2c45129871a2c89f5d1e0a`.
- **destination:** `AnalyticsScreen.kt`, `AnalyticsView.swift`

## Task APP-005: Edge Worker Sync & Cloudflare Integration
- **status:** `ready`
- **priority:** `medium`
- **feature:** `edge-sync-fabric`
- **summary:** Connect `HabitSyncClient` to live Cloudflare Worker for background streak and ritual persistence.
- **destination:** `backend/worker.js`, `HabitSyncClient.kt`, `HabitSyncClient.swift`
