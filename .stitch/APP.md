# AuraHabit — App Specification & Concept Memory

> **Purpose:** This folder is the local product and concept memory for `AuraHabit`.

## 1. Product Identity
- **App:** `AuraHabit`
- **Platform:** Android (Jetpack Compose / Material 3) & iOS (SwiftUI)
- **Audience:** Mindful professionals, creatives, and wellness seekers desiring daily intentionality without clutter.
- **Repo:** `mattglass/AuraHabit`
- **Package:** `com.aurahabit.app`
- **Application ID:** `com.aurahabit.app`
- **Primary module:** `:app`
- **Current phase:** `prototype`

## 2. Product Goals
The app exists to:

1. Transform daily habit consistency into a living, visual "Daily Aura" score ring.
2. Provide frictionless, tactile ritual check-ins for Morning, Midday, and Evening routines.
3. Foster sustained momentum with streak milestones and bio-rhythm harmony feedback.
4. Visualize habit consistency through high-contrast weekly heatmaps and category balance metrics.
5. Provide local-first privacy with lightweight, optional edge cloud backup.

## 3. Source-of-Truth Hierarchy
Do not force current capability and intended visual direction into one ranking.

For product scope, constraints, and current behavior, prefer:
1. **Explicit user decisions and `AGENTS.md`**
2. **Verified runtime behavior and native implementation**
3. **`docs/app-build-spec.md`**
4. **`.engine/ROADMAP.md` and `.engine/next-prompt.md`**

For intended visual identity on a design-first surface, prefer:
1. **Explicit user design decisions**
2. **`.engine/DESIGN.md`, approved screen packets, and their source artwork**
3. **The active Stitch design system (`projects/18210720106342944745`) and tracked reference screens**
4. **Native tokens and surfaces only after user acceptance or a passed visual gate**

## 4. Core Feature Areas

### Feature Area 1: Daily Aura Dashboard (Home)
- **Hero Inner State Card:** Circular glowing progress gauge depicting the Daily Aura percentage (0–100%), level title ("Level 4 Master"), and fire streak pill ("🔥 14-day streak").
- **Morning Rituals Checklist:** Tactile checkable habit cards (Cold Hydration, 15m Breathwork) with glowing state chips.
- **Evening Rituals Checklist:** Active progress cards with dual-gradient progress bars and sticky action buttons (Resume Reading, Digital Sunset toggle).
- **Ambient Soundscape Pill:** Synchronized solfeggio audio playback bar (528Hz HRV).

### Feature Area 2: Ritual Analytics & Growth
- **Weekly Consistency Chart:** 7-day spline curve graphing daily momentum from Monday through Sunday.
- **Metric Cards Grid:** Active streak counter and weekly completed ritual total (+12% delta).
- **Weekly Rhythm Matrix:** 7×3 consistency grid tracking Morning Flow, Midday Focus, and Evening Wind-down.
- **Category Radar / Balance:** Visual breakdown of Mindful Flow (94%), Physical Vitality (88%), and Rest & Recovery (82%).

### Feature Area 3: Habit Customization & Edge Sync
- **Local-First Persistence:** Room database / Swift Data cache for zero-latency offline operation.
- **Edge Sync Fabric:** REST client connecting to Cloudflare Worker / Node backend for multi-device sync.
- **Settings & Privacy:** Biometric lock, export data, and visual theme customization.

## 5. Native Destination Map
Use these as the primary implementation destinations:

- **Android Root:** `app/`
- **Android Entry:** `app/src/main/java/com/aurahabit/app/MainActivity.kt`
- **Android Navigation:** `app/src/main/java/com/aurahabit/app/ui/navigation/AppNavigation.kt`
- **Android Dashboard:** `app/src/main/java/com/aurahabit/app/ui/screens/DashboardScreen.kt`
- **Android Analytics:** `app/src/main/java/com/aurahabit/app/ui/screens/AnalyticsScreen.kt`
- **Android Settings:** `app/src/main/java/com/aurahabit/app/ui/screens/SettingsScreen.kt`
- **Android Data / Sync:** `app/src/main/java/com/aurahabit/app/data/HabitSyncClient.kt`
- **iOS Root:** `ios/`
- **iOS Entry:** `ios/Sources/App/AuraHabitApp.swift`
- **iOS Navigation:** `ios/Sources/App/MainTabView.swift`
- **iOS Screens:** `ios/Sources/Screens/DashboardView.swift`, `AnalyticsView.swift`, `SettingsView.swift`
- **iOS Data / Sync:** `ios/Sources/Data/HabitSyncClient.swift`

## 6. Concept / Stitch Policy
- Treat Google Stitch Project `18210720106342944745` as the visual authority.
- Retain dark cosmic wellness aesthetic (`#0B0F19`, `#151C2C`, `#6366F1`, `#8B5CF6`, `#06B6D4`).
- Require full-pill controls (`ROUND_FULL`) and 24dp-32dp container radii.

## 7. Working Rules
1. Keep the roadmap concrete enough for implementation, not just ideation.
2. Every serious concept should name its native destination in both Compose and SwiftUI.
3. Prioritize trust, clarity, and repeat-use value.
4. Use `.engine/ROADMAP.md` as the queue and `.engine/next-prompt.md` as the active baton.

## 8. App Feature Inventory & Requirements Map

| Feature ID | Screen / Area | UI Component | Native Compose Destination | Native SwiftUI Destination | Status |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **FEAT-001** | Dashboard | Daily Aura Progress Ring | `DashboardScreen.kt` (`AuraProgressRing`) | `DashboardView.swift` (`AuraRing`) | Implemented |
| **FEAT-002** | Dashboard | Habit Card & Checkbox | `DashboardScreen.kt` (`HabitCard`) | `DashboardView.swift` (`HabitCard`) | Implemented |
| **FEAT-003** | Navigation | Material 3 Bottom Bar | `AppNavigation.kt` (`AuraHabitNavShell`) | `MainTabView.swift` (`TabView`) | Implemented |
| **FEAT-004** | Analytics | Weekly Metric Cards | `AnalyticsScreen.kt` (`MetricCard`) | `AnalyticsView.swift` (`MetricCard`) | Implemented |
| **FEAT-005** | Analytics | 7-Day Consistency Matrix | `AnalyticsScreen.kt` (`WeeklyHeatmap`) | `AnalyticsView.swift` (`WeeklyHeatmap`) | Implemented |
| **FEAT-006** | Settings | Cloud Sync Ping Button | `SettingsScreen.kt` (`ConnectionCard`) | `SettingsView.swift` (`SyncSection`) | Implemented |
| **FEAT-007** | Network | Edge Sync Client | `HabitSyncClient.kt` | `HabitSyncClient.swift` | Implemented |
