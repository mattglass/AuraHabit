# AuraHabit Application Build Specification

## System Architecture

`AuraHabit` is structured as a dual-platform native mobile application:

```
AuraHabit/
├── app/                  # Native Android (Jetpack Compose, Kotlin, Material 3)
│   └── src/main/java/com/aurahabit/app/
│       ├── MainActivity.kt
│       ├── ui/
│       │   ├── navigation/AppNavigation.kt
│       │   └── screens/
│       │       ├── DashboardScreen.kt
│       │       ├── AnalyticsScreen.kt
│       │       └── SettingsScreen.kt
│       └── data/HabitSyncClient.kt
├── ios/                  # Native iOS (SwiftUI, Swift 5.9+, iOS 17 Observation)
│   └── Sources/
│       ├── App/
│       │   ├── AuraHabitApp.swift
│       │   └── MainTabView.swift
│       ├── Screens/
│       │   ├── DashboardView.swift
│       │   ├── AnalyticsView.swift
│       │   └── SettingsView.swift
│       └── Data/HabitSyncClient.swift
├── backend/              # Edge Services & Mock Fabric
│   ├── server.js         # Node mock API
│   └── worker.js         # Cloudflare Worker
├── .engine/              # Persistent Engine Memory
│   ├── APP.md
│   ├── DESIGN.md
│   ├── ROADMAP.md
│   ├── next-prompt.md
│   ├── metadata.json
│   └── intake/
└── .stitch/              # Stitch Design Operations & Manifests
    ├── operations/current.json
    └── intake/design-intake.md
```

## Build & Run Commands

### Android:
```bash
./gradlew assembleDebug
android run
```

### iOS:
```bash
xcodebuild -scheme AuraHabit -destination 'platform=iOS Simulator,name=iPhone 16'
```

### Mock Backend:
```bash
node backend/server.js
```
