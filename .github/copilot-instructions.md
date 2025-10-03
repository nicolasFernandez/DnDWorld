# DnDWorld - Copilot Coding Agent Instructions

## Repository Summary
iOS character generator for D&D 5e (Spanish/English). Creates characters with stats, race/class selection, and equipment. SwiftUI app (~38 files, 1,300 LOC), Swift 5.0, iOS 16.2+, bilingual, no external dependencies. MVVM architecture.

## Build & Test (Requires macOS + Xcode 14.2+)

**CRITICAL**: Project requires Xcode on macOS. Cannot build on Linux/Windows.

### Build Commands
```bash
# Build (1-2 min first time, 30-60s incremental)
xcodebuild build-for-testing -scheme DnDWorld -project DnDWorld.xcodeproj -destination 'platform=iOS Simulator,name=iPhone 15'

# Test (includes unit and UI tests, ~1-2 min)
xcodebuild test-without-building -scheme DnDWorld -project DnDWorld.xcodeproj -destination 'platform=iOS Simulator,name=iPhone 15'

# Combined build + test
xcodebuild test -scheme DnDWorld -project DnDWorld.xcodeproj -destination 'platform=iOS Simulator,name=iPhone 15'

# Clean if issues
xcodebuild clean -scheme DnDWorld -project DnDWorld.xcodeproj
```

### CI/CD Workflows
1. **`.github/workflows/ios.yml`**: Builds and tests on macos-latest (3-5 min)
2. **`.github/workflows/mobsf.yml`**: Security scan on ubuntu-latest (weekly)

## Project Structure

```
DnDWorld/
├── DnDWorld/                      # Main app
│   ├── DnDWorldApp.swift          # Entry point (@main)
│   ├── ContentView.swift          # Main UI (WIP: picker views, nav bar)
│   ├── Clases/ (23 files)         # Models: Character, Ability/Abilities, RaceType, ClassType, 
│   │                              # BackgroundType, Equipment/Weapon/Armor, Spell/School, 
│   │                              # Skill/Skills, Feat, etc.
│   ├── Views/ (6 files)           # AbilityScoresView (WIP), ClassDetails/Row, RaceDetails, etc.
│   ├── Utils/String+Utils.swift   # camelToSnakeCase() for localization keys
│   ├── Assets.xcassets/           # Images: classes/, races/, schools/, sources/
│   ├── en.lproj/Localizable.strings (203 entries)
│   └── es.lproj/Localizable.strings (203 entries)
├── DnDWorldTests/                 # Unit tests (mirror source structure)
├── DnDWorldUITests/               # UI tests
└── DnDWorld.xcodeproj/            # Xcode project (no external dependencies)
```

## Key Patterns

### Localization (CRITICAL)
- **Pattern**: Enum case `halfElf` → key `half_elf_name` using `.camelToSnakeCase()`
- **ALWAYS** add strings to BOTH `en.lproj/` AND `es.lproj/Localizable.strings`
- Use `NSLocalizedString("{key}", comment: "")` for all user-facing text

### Testing
- Tests mirror source: `DnDWorldTests/Clases/`, `DnDWorldTests/Utils/`
- Use `@testable import DnDWorld` and XCTest assertions
- D&D modifier formula: `((totalScore - 10) / 2).rounded(.down)` (see `Ability.swift`)

### Configuration
- Use `.xcodeproj` (no workspace, no CocoaPods/SPM)
- DO NOT edit `project.pbxproj` manually
- `.gitignore` excludes: build/, DerivedData/, xcuserdata/, *.dSYM

## Pre-Commit Checklist
1. Build succeeds without errors
2. All tests pass (unit + UI)
3. Localization strings added to BOTH en.lproj AND es.lproj
4. New images added to appropriate Assets.xcassets/ subdirectory

## Common Pitfalls
- **macOS Only**: Cannot build on Linux/Windows
- **Simulator**: Use `iPhone 15` or similar. CI auto-selects first available.
- **DerivedData Issues**: Run `xcodebuild clean` if build fails unexpectedly
- **Localization**: Forgetting es.lproj will break Spanish users
- **xcuserdata**: Git-ignored. Don't depend on user-specific settings.

## Repository Root Files
`README.md` (Spanish), `CODE_OF_CONDUCT.md` (Contributor Covenant v2.0), `.gitignore`, `DnDWorld.xcodeproj/`, `DnDWorld/`, `DnDWorldTests/`, `DnDWorldUITests/`, `.github/`

---
**Trust these instructions.** Only search if: (1) you need implementation details, (2) info incomplete for your task, or (3) encountering undocumented errors. When in doubt, check `.github/workflows/ios.yml` for exact CI build commands.
