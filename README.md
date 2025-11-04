# TTRPGCharacterForge

A free, open source Swift application for creating and managing characters compatible with the 2014 fifth edition ruleset for Dungeons & Dragons (in the meantime).

This project is unofficial Fan Content permitted under the [Fan Content Policy](https://company.wizards.com/en/legal/fancontentpolicy). Not approved/endorsed by Wizards. Portions of the materials used are property of Wizards of the Coast. ©Wizards of the Coast LLC.

This project includes material from the [System Reference Document 5.1](https://www.dndbeyond.com/srd#SystemReferenceDocumentv51) by Wizards of the Coast LLC, available [here](https://www.dndbeyond.com/srd#SystemReferenceDocumentv51) and licensed for use under the Creative Commons Attribution 4.0 International License.

## Security

For information about our security policy, including how to report vulnerabilities and our approach to security alerts, please see [SECURITY.md](SECURITY.md).

### Git Hooks for Sensitive Information

This project uses git hooks to automatically sanitize sensitive information before commits:

1. **pre-commit hook**: Automatically replaces the actual bundle identifiers with placeholder values before committing
2. **post-checkout hook**: Restores the actual bundle identifiers after checkout for local development

#### Setup

To use these hooks, make sure they are executable:

```bash
chmod +x .git/hooks/pre-commit
chmod +x .git/hooks/post-checkout
```

#### How it works

- When you commit changes, the pre-commit hook will sanitize the project.pbxproj file
- After checkout/pull, the post-checkout hook will restore your actual development identifiers
- This ensures development team and bundle identifiers remain private

## Development

- Follow SOLID and Clean Code principles.
- Apply Design Patters as needed following [Refactoring Guru](https://refactoring.guru/design-patterns) guidelines.
- Use SwiftUI instead of UIKit.

## TO-DO:

- [ ] Create characters step-by-step (race, class, background, initial equipment or wealth, choose point assignment systems) using SRD 5.1.
- [ ] Edit and save characters locally and/or remotely.
- [ ] Export character sheet as PDF. 
- [ ] Import image for character, adding it to exportable character sheet.
- [ ] Export character token for use in Virtual Tabletops. 
- [ ] Add new TTRPG Game systems like: Pathfinder, Vampire: The Masquerade, Call of Cthulhu, etc. There's a big list on [TTRPGList.com](https://ttrpglist.com/systems)
