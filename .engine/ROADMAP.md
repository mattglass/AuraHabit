# AuraHabit Roadmap

> **Purpose:** This is the living task queue for the autonomous Android development engine.
>
> The current loop should:
> 1. assess app maturity and choose the best dependency-safe task
> 2. write it into `.engine/next-prompt.md` using the current baton schema
> 3. perform concept work and/or native implementation
> 4. validate to the right tier and regression scope
> 5. update task notes with evidence, risk, and unlocked follow-up
> 6. inject new tasks only when the trigger is justified
> 7. periodically review cross-feature coherence
> 8. advance the next baton

## Schema version
- roadmap_template: `current`
- baton_schema: `current`
- metadata_evidence_schema: `current`

## Status Meanings
- `ready` — next available task
- `in_progress` — currently active baton
- `blocked` — waiting on clarification, assets, or technical resolution
- `done` — completed and recorded
- `icebox` — intentionally deferred until maturity or dependencies justify activation

## Priority Order
Prefer tasks in this order unless a task is blocked:
1. user trust improvements
2. onboarding / activation
3. primary daily-use flows
4. supporting features
5. cross-feature coherence when drift starts to appear
6. production-readiness work that has become timely for the current app maturity

---

## Task APP-001
- status: ready
- priority: high
- task_type: `native_scaffold`
- feature: `app-shell-and-native-project`
- screen: `App shell`
- mode: `native`
- destination: `app/src/main/java/[PACKAGE_PATH]/ native project scaffold and feature folders`
- app_maturity: `prototype`
- evidence_expectation: `light`
- regression_scope: `none`
- architecture_review: `note_only`
- risk_level: `medium`
- summary: `Create the native Jetpack Compose Android project scaffold, app shell, package namespace, and first Gradle & Android CLI build/run loop.`
- success_criteria:
  - `A Jetpack Compose Android project exists with a non-generic package namespace, application ID, build.gradle.kts, settings.gradle.kts, and Material 3 theme.`
  - `.engine/metadata.json`, `.engine/APP.md`, `.engine/ROADMAP.md`, and `.engine/next-prompt.md` point at the real native project paths.`
  - `The first build/run loop is ready for Gradle and Android CLI validation before product feature work begins.`
- depends_on:
  - `Repo-local setup memory is coherent.`
- unlocked_by:
  - `READY setup memory is coherent enough to create native project files.`
- notes:
  - `Use android-native-scaffold when available.`
  - `Do not keep MyApp as the package/target name unless explicitly chosen.`
  - `Validate with Gradle (./gradlew assembleDebug) and Android CLI (android run) before starting product feature implementation.`

## Feature Map Tasks

After setup intake, use `android-feature-map` to insert APP-002 and later tasks from actual Stitch screens, screenshots, notes, inferred requirements, service needs, and native destination planning.
