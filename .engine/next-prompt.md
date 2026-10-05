---
platform: "Android"
roadmap_task: APP-001
task_type: native_scaffold
feature: app-shell-and-native-project
screen: App shell
destination: "app/src/main/java/[PACKAGE_PATH]/ native project scaffold and feature folders"
mode: native
device: universal
validation_tier: tier1_compile
app_maturity: prototype
design_input: .engine/DESIGN.md
service_maturity: level0_placeholder
depends_on: repo-local operating memory coherent
unlocked_by: READY setup memory complete enough to create native project files
regression_scope: none
evidence_expectation: light
architecture_review: note_only
risk_level: medium
phase: prototype
---

Create the first native Jetpack Compose app shell for `AuraHabit`.

**SOURCE OF TRUTH (REQUIRED):**
- Follow `AGENTS.md`
- Follow `docs/android/app-build-spec.md`
- Follow `docs/core/git-workflow.md`
- Follow `.engine/APP.md` and `.engine/DESIGN.md`
- Treat design sources as semantic design evidence, not literal layout export

**TASK:**
Create or confirm the native Android project scaffold, derive the real package namespace and applicationId from `AuraHabit`, configure Gradle Kotlin DSL (`build.gradle.kts`), replace active placeholder native paths, and build/run the first app shell.

**GOALS:**
1. Create the native Jetpack Compose Android project with Gradle Kotlin DSL.
2. Establish `MainActivity`, Material 3 theme foundation (`Theme.kt`, `Color.kt`, `Type.kt`), and initial package structure.
3. Update `.engine/metadata.json`, `.engine/APP.md`, `.engine/ROADMAP.md`, and this baton with real native paths.
4. Validate the generated project with Gradle and the Android CLI.

**VALIDATION REQUIREMENTS:**
- Reach `tier1_compile` (`./gradlew assembleDebug`).
- Deploy and launch on an Android emulator (`android run`).
- Capture launch evidence with `android screen capture -a` and `android layout`.
- Record the feature/milestone branch and useful task checkpoint. Reuse current
  READY validation evidence; publish only under the standing repo policy or
  separate authority, and do not create a PR solely because this task closed.

**DO NOT:**
- implement product feature code before scaffold validation
- add backend or Cloudflare services
- copy design HTML directly into Compose
- keep `MyApp` as the package/target name unless explicitly chosen
- stage unrelated files or infer push/PR/merge authority
