# Project Context: AuraHabit

## Overview

- App name: `AuraHabit`
- Platform focus: `Android & iOS`
- App purpose: `Mindful daily ritual and habit tracker with bioluminescent Daily Aura visualization`
- Primary target user: `Mindful professionals and wellness seekers`
- Current phase: `prototype`

## Product Priorities

Prioritize:
- Luminous visual fidelity matching Google Stitch project `18210720106342944745`
- Zero-friction tactile habit check-ins with spring motion physics
- Cross-platform architectural parity between Jetpack Compose and SwiftUI

## Architecture

- Android package: `com.aurahabit.app`
- Android main activity: `com.aurahabit.app.MainActivity`
- Android UI framework: `Jetpack Compose with Material 3`
- iOS app target: `AuraHabitApp`
- iOS UI framework: `SwiftUI with iOS 17 Observation`
- Navigation: Dual-platform bottom tab shell (`AuraHabitNavShell` / `MainTabView`)
- Data/storage: Local-first cache with REST Edge Worker sync client (`HabitSyncClient`)

## Design Direction

- Brand / visual tone: `Cosmic Dark Wellness (#0B0F19 canvas, #151C2C slate containers, #6366F1 / #8B5CF6 / #06B6D4 glowing accents)`
- Design system source of truth: `Google Stitch Project 18210720106342944745, .engine/DESIGN.md`
- Stitch usage: `PRIMARY`

## Repo Memory

- `AGENTS.md`
- `docs/app-build-spec.md`
- `docs/bootstrap-receipt.md`
- `.engine/APP.md`
- `.engine/DESIGN.md`
- `.engine/ROADMAP.md`
- `.engine/next-prompt.md`
- `.engine/metadata.json`
- `.stitch/operations/current.json`
