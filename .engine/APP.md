# AuraHabit — Stitch Workspace

> **Purpose:** This folder is the local product and concept memory for `AuraHabit`.

## 1. Product Identity
- **App:** `AuraHabit`
- **Platform:** Android
- **Audience:** `[TARGET_USER]`
- **Repo:** `[REPO_NAME]`
- **Package:** `[PACKAGE_NAMESPACE]`
- **Application ID:** `[APPLICATION_ID]`
- **Primary module:** `:app`
- **Current phase:** `[prototype / dogfood / beta / release_candidate / production]`

## 2. Product Goals
The app exists to:

1. `[GOAL_1]`
2. `[GOAL_2]`
3. `[GOAL_3]`
4. `[GOAL_4]`
5. `[GOAL_5]`

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
3. **The active Stitch design system and tracked reference screens**
4. **Native tokens and surfaces only after user acceptance or a passed visual gate**

An ungated native pass records adoption or divergence. It does not silently
replace the intended visual direction.

## 4. Core Feature Areas

### Feature Area 1
- `[FEATURE_AREA_1_ITEM_1]`
- `[FEATURE_AREA_1_ITEM_2]`
- `[FEATURE_AREA_1_ITEM_3]`

### Feature Area 2
- `[FEATURE_AREA_2_ITEM_1]`
- `[FEATURE_AREA_2_ITEM_2]`
- `[FEATURE_AREA_2_ITEM_3]`

### Feature Area 3
- `[FEATURE_AREA_3_ITEM_1]`
- `[FEATURE_AREA_3_ITEM_2]`
- `[FEATURE_AREA_3_ITEM_3]`

### Feature Area 4
- `[FEATURE_AREA_4_ITEM_1]`
- `[FEATURE_AREA_4_ITEM_2]`
- `[FEATURE_AREA_4_ITEM_3]`

## 5. Native Destination Map
Use these as the primary implementation destinations:

- Native project: `app/`
- App entry: `app/src/main/java/[PACKAGE_PATH]/MainActivity.kt`
- App shell / Navigation: `app/src/main/java/[PACKAGE_PATH]/ui/navigation/`
- First feature: `app/src/main/java/[PACKAGE_PATH]/ui/features/[FIRST_FEATURE_FOLDER]/`
- Services / Network: `app/src/main/java/[PACKAGE_PATH]/data/remote/`
- Persistence / Room: `app/src/main/java/[PACKAGE_PATH]/data/local/`
- Design system / Theme: `app/src/main/java/[PACKAGE_PATH]/ui/theme/`

## 6. Concept / Stitch Policy
- Treat Stitch as a concept and layout-exploration system and, when approved,
  evidence of the intended visual identity
- Do not let concept output overrule verified native behavior, product
  constraints, or service reality
- Do not let an ungated native approximation overrule approved Stitch visual
  language, screen packets, or source artwork
- Favor concepts that feel implementable in Jetpack Compose with Material 3 and credible for the target user
- Prefer workflow clarity over decorative novelty

## 7. Preferred First Concepts
- `[PREFERRED_CONCEPT_1]`
- `[PREFERRED_CONCEPT_2]`
- `[PREFERRED_CONCEPT_3]`
- `[PREFERRED_CONCEPT_4]`

## 8. Working Rules
1. Keep the roadmap concrete enough for implementation, not just ideation.
2. Every serious concept should name its likely native destination.
3. Prioritize trust, clarity, and repeat-use value.
4. Keep the product tone aligned with the intended audience.
5. Use `.engine/ROADMAP.md` as the queue and `.engine/next-prompt.md` as the active baton.

## 9. App Feature Inventory & Requirements Map

Generate this section from Stitch/screenshots/notes with `android-feature-map`.

Keep visible screen evidence separate from inferred requirements, future scope, service implications, and privacy/risk notes.
