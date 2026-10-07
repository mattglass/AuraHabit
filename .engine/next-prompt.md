---
platform: "both"
roadmap_task: APP-003
task_type: feature_implementation
feature: dashboard-visual-enhancement
screen: Daily Aura Dashboard
destination: "app/src/main/java/com/aurahabit/app/ui/screens/DashboardScreen.kt & ios/Sources/Screens/DashboardView.swift"
mode: native
device: universal
validation_tier: tier2_interactive
app_maturity: prototype
design_input: .engine/DESIGN.md
service_maturity: level1_mock
depends_on: APP-001, APP-002
unlocked_by: Stitch design intake completed
regression_scope: none
evidence_expectation: visual_diff
architecture_review: note_only
risk_level: low
phase: prototype
---

Enhance the Daily Aura Dashboard across Jetpack Compose and SwiftUI to achieve pixel parity with Stitch screen `7c6f05785f794c4e97c9b0e1e9f1a04d`.

**DESIGN SOURCE OF TRUTH:**
- Google Stitch Project `18210720106342944745`
- `.engine/DESIGN.md`
- Visual screenshot: `.engine/intake/screenshots/stitch-cosmic-wellness-home.png`

**GOALS:**
1. Upgrade the Aura Progress Ring with the dual-gradient glow (`#6366F1` to `#06B6D4`) and central percentage ("92% Radiant Aura", "Level 4 Master").
2. Implement the Morning Rituals and Evening Rituals section headers with completed state pills and active reading progress bar.
3. Integrate tactile haptics on habit card toggle.
