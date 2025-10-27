# DnDWorld

A Swift application for Dungeons & Dragons character management and world building.

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

- Follow SOLID principles and Clean Code practices
- Apply design patterns like Strategy, NullObject, Composite, Adapter, Observer when needed
- Use SwiftUI instead of UIKit

## TO-DO:

- [ ] View components for Character Sheet
- [ ] Character Sheet View
- [ ] Export as PDF or image
- [ ] Allow user to create characters step-by-step (race, class, background, initial equipment or wealth, choose point assignment systems) 
