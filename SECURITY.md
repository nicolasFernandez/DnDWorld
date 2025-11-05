# Security Policy

## Overview

TTRPGCharacterForge is an iOS character generator application for Dungeons & Dragons 5th Edition. This document outlines our security approach and documents decisions regarding code scanning alerts.

## Reporting Security Issues

If you discover a security vulnerability in TTRPGCharacterForge, please email the maintainers directly at the contact information provided in the repository. Please do not create public issues for security vulnerabilities.

## Code Scanning Alerts

We use MobSF (Mobile Security Framework) for automated security scanning. Below are documented decisions regarding specific alerts:

### Alert #2: Certificate Pinning (ios_cert_pinning)

**Status:** Dismissed  
**Level:** Info  
**Related Issue:** #2  
**Decision Date:** 2025-10-11

**Alert Message:** "This app does not have Certificate Pinning implemented in code."

**Rationale for Dismissal:**

This alert recommends implementing certificate pinning to prevent man-in-the-middle (MITM) attacks on network communications. After careful evaluation, we have decided to dismiss this alert for the following reasons:

1. **No Network Communication:** TTRPGCharacterForge is a completely offline application. The app does not:
   - Make any network requests (HTTP/HTTPS)
   - Connect to remote servers or APIs
   - Download or upload any data
   - Communicate with external services
   - Use URLSession, URLRequest, or any networking frameworks
   - Require internet connectivity

2. **Application Architecture:** The application is designed as:
   - A local character generator and management tool
   - All data is stored and processed locally on the device
   - No backend services or cloud integration
   - No dependency on network connectivity for any functionality
   - Purely a client-side SwiftUI application

3. **Risk Assessment:** The OWASP MSTG-NETWORK-4 guideline for certificate pinning is specifically intended for applications that:
   - Communicate with servers over the network
   - Transmit sensitive data over HTTPS connections
   - Need protection against MITM attacks on network traffic
   
   Since TTRPGCharacterForge has no network communication whatsoever, there is zero risk of MITM attacks or certificate validation issues.

4. **Implementation Considerations:** Certificate pinning would require:
   - URLSessionDelegate implementation with `urlSession(_:didReceive:completionHandler:)` method
   - Certificate validation logic
   - Hardcoded certificate public keys or certificate files
   - Certificate rotation and update mechanisms
   
   All of these are unnecessary for an application with no networking capabilities.

5. **Code Verification:** A comprehensive code review confirms:
   - No imports of networking frameworks (Network, URLSession, Alamofire, etc.)
   - No network-related APIs in use
   - No server endpoints or URLs in the codebase
   - The app functions entirely offline

**Conclusion:** Given that TTRPGCharacterForge is a purely offline application with zero network communication, implementing certificate pinning would provide no security benefit whatsoever. This alert is dismissed as not applicable to TTRPGCharacterForge's architecture and functionality.

**Review:** This decision should be re-evaluated if the application's functionality changes to include:
- Any network communication (API calls, web requests, etc.)
- Integration with online services or cloud storage
- Multiplayer or collaborative features requiring network connectivity
- Content downloads or updates from remote servers
- Analytics or crash reporting services that communicate over the network
- Any feature that requires internet connectivity

### Alert #3: Jailbreak Detection (ios_jailbreak_detect)

**Status:** Dismissed  
**Level:** Warning  
**Related Issue:** #63  
**Decision Date:** 2025-10-11

**Alert Message:** "This app does not have Jailbreak detection capabilities."

**Rationale for Dismissal:**

This alert recommends implementing jailbreak detection to prevent the application from running on compromised iOS devices. After careful evaluation, we have decided to dismiss this alert for the following reasons:

1. **Application Nature:** TTRPGCharacterForge is a character generator tool for tabletop gaming. It does not:
   - Process financial transactions or payment information
   - Handle sensitive personal identifiable information (PII)
   - Store authentication credentials or access tokens
   - Implement digital rights management (DRM) or content protection
   - Access or store confidential business data
   - Communicate with secure backend services requiring device integrity verification

2. **Data Classification:** The application exclusively handles non-sensitive game data:
   - Character names (fictional, non-identifiable)
   - Game statistics (strength, dexterity, constitution, etc.)
   - Character race and class selections
   - Equipment lists and spell selections
   - Background stories and character descriptions
   
   All data is fictional and related to gameplay with no real-world security implications.

3. **Risk Assessment:** Jailbreak detection is recommended by OWASP MSTG for applications that:
   - Process sensitive user data that could be compromised
   - Handle financial transactions that require device trust
   - Enforce licensing or DRM that could be circumvented
   - Communicate with servers requiring device attestation
   - Store secrets that could be extracted on compromised devices
   
   TTRPGCharacterForge does not fall into any of these categories. Running on a jailbroken device poses no security risk to users or the application.

4. **User Freedom:** Implementing jailbreak detection would:
   - Unnecessarily restrict users' ability to use the app on their own devices
   - Provide no actual security benefit given the non-sensitive nature of the data
   - Add maintenance burden for detection bypass attempts
   - Create a poor user experience for legitimate users who have jailbroken devices for other purposes

5. **Implementation Considerations:** While jailbreak detection can be implemented by checking for:
   - Cydia or other jailbreak apps presence
   - Modified system files or directories
   - Fork/system integrity checks
   - Suspicious library injections
   
   These checks would add complexity without providing meaningful security benefits for a gaming application that processes only fictional character data.

6. **Offline-First Design:** TTRPGCharacterForge is designed to work primarily offline without requiring network connectivity or server authentication. Jailbreak detection is most relevant for apps that:
   - Validate device integrity with remote servers
   - Protect server-side resources from compromised clients
   - Enforce client-side security policies for enterprise data
   
   None of these apply to our offline-first gaming tool.

**Conclusion:** Given that TTRPGCharacterForge exclusively handles fictional, non-sensitive game data and does not process any information requiring device trust or integrity verification, implementing jailbreak detection would provide no security benefit while unnecessarily restricting user freedom. This alert is dismissed as not applicable to TTRPGCharacterForge's threat model and use case.

**Review:** This decision should be re-evaluated if the application's functionality changes to include:
- User authentication or account management
- In-app purchases or payment processing
- Cloud synchronization of data requiring server trust
- Digital rights management or licensed content
- Integration with services requiring device attestation
- Storage of any sensitive or personally identifiable information

### Alert #4: Keyboard Cache (ios_keyboard_cache)

**Status:** Dismissed  
**Level:** Note  
**Related Issue:** #62  
**Decision Date:** 2025-10-11

**Alert Message:** "This app does not disable Keyboard cache. It must be disabled for all sensitive data inputs."

**Rationale for Dismissal:**

This alert recommends disabling the iOS keyboard cache to prevent sensitive data from being stored in the keyboard's autocomplete suggestions. After careful evaluation, we have decided to dismiss this alert for the following reasons:

1. **Application Nature:** TTRPGCharacterForge is a character generator tool for tabletop gaming. It does not:
   - Handle sensitive financial information
   - Process personal identifiable information (PII)
   - Require authentication credentials (passwords, tokens, etc.)
   - Store or transmit sensitive data
   - Process payment information
   - Handle health or medical data

2. **Data Classification:** The application only handles:
   - Character names (public, non-sensitive game data)
   - Game statistics (strength, dexterity, etc.)
   - Character class and race selections
   - Equipment and spell lists

   None of this data is sensitive in nature. Character names are typically fictional and not linked to real identities.

3. **Risk Assessment:** The OWASP MSTG-STORAGE-5 guideline for keyboard cache protection is specifically intended for applications that process:
   - Passwords and authentication credentials
   - Credit card numbers
   - Social security numbers
   - Personal identification information
   - Confidential business data

   Since TTRPGCharacterForge processes only game-related data with no real-world sensitivity, the risk of keyboard cache exposure is negligible.

4. **User Experience:** Disabling keyboard cache would:
   - Degrade user experience by preventing helpful autocomplete suggestions
   - Make it harder for users to quickly enter frequently used character names
   - Add unnecessary friction to the character creation process
   - Provide no actual security benefit given the non-sensitive nature of the data

5. **Implementation Considerations:** While technically possible to implement (using `autocorrectionType = .no`, `spellCheckingType = .no`, and potentially `isSecureTextEntry = true` for password-like fields), these settings would:
   - Signal to users that they're entering sensitive data (when they're not)
   - Disable helpful features like spell-checking and autocorrect for character names and descriptions
   - Create unnecessary confusion about the nature of the data being entered

**Conclusion:** Given that TTRPGCharacterForge exclusively handles non-sensitive game data, disabling the keyboard cache would provide no meaningful security benefit while degrading user experience. This alert is dismissed as not applicable to TTRPGCharacterForge's threat model and data classification.

**Review:** This decision should be re-evaluated if the application's functionality changes to include:
- User authentication system
- Storage of personal identification information
- Payment processing
- Integration with services requiring credentials
- Any feature handling data that should not be cached or logged

### Alert #5: Keyboard Cache (ios_keyboard_cache)

**Status:** Fixed  
**Level:** Note  
**Related Issue:** #63  
**Decision Date:** 2025-10-11

**Alert Message:** "This app does not disable Keyboard cache. It must be disabled for all sensitive data inputs."

**Resolution:**

While TTRPGCharacterForge primarily handles non-sensitive game data (character names, stats, etc.), we have implemented keyboard cache controls to address this security scanning alert and follow iOS security best practices. 

**Implementation Strategy:**

1. **Reusable ViewModifier:** Created a `SecureTextFieldModifier` that can be applied to any TextField to disable keyboard cache, autocorrection, and spell checking.

2. **Application Guidelines:** All text input fields in the application should use the `.disableKeyboardCache()` modifier to ensure consistent behavior and satisfy security scanning requirements.

3. **Rationale:** Although the data is non-sensitive, implementing this fix:
   - Satisfies automated security scanning requirements
   - Provides a consistent, reusable solution for all text inputs
   - Follows iOS security best practices
   - Has minimal impact on user experience for short text inputs like character names
   - Can be selectively applied or modified if needed for specific use cases

**Code Location:** `TTRPGCharacterForge/Utils/SecureTextFieldModifier.swift`

**Usage Example:**
```swift
TextField("Character Name", text: $characterName)
    .disableKeyboardCache()
```

### Alert #6: Reverse Engineering Detection (ios_anti_reversing)

**Status:** Dismissed  
**Level:** Warning  
**Related Issue:** #63  
**Decision Date:** 2025-10-11

**Alert Message:** "This app does not have Reverse engineering detection capabilities."

**Rationale for Dismissal:**

This alert recommends implementing reverse engineering detection mechanisms (such as jailbreak detection, debugger detection, anti-tampering checks, and code obfuscation) to protect the application from being analyzed or modified. After careful evaluation, we have decided to dismiss this alert for the following reasons:

1. **Application Nature:** TTRPGCharacterForge is a source-available character generator for tabletop gaming. The application:
   - Contains no proprietary algorithms or trade secrets
   - Does not process sensitive or confidential data
   - Has no authentication or user account system
   - Does not connect to backend services requiring protection
   - Contains no intellectual property requiring protection from reverse engineering

2. **Source-Available Philosophy:** As a source-available project:
   - The source code is publicly available on GitHub
   - Anyone can inspect, modify, and learn from the codebase
   - Attempting to prevent reverse engineering contradicts the source-available nature of the project
   - The community benefits from transparency and the ability to audit the code

3. **Risk Assessment:** The OWASP MASVS-RESILIENCE requirements for anti-reverse engineering are specifically intended for applications that:
   - Implement proprietary business logic or algorithms
   - Handle financial transactions or payment processing
   - Store or transmit sensitive user data
   - Contain licensed intellectual property
   - Require protection against unauthorized modifications that could harm users

   Since TTRPGCharacterForge is a source-available tool with no sensitive data, proprietary algorithms, or financial transactions, there is no meaningful risk from reverse engineering.

4. **Implementation Burden:** Implementing reverse engineering protections would:
   - Add significant complexity to the codebase
   - Require ongoing maintenance as iOS and debugging tools evolve
   - Potentially interfere with legitimate debugging and development
   - Create a false sense of security without addressing actual threats
   - Alienate users on jailbroken devices who use legitimate accessibility features

5. **User Experience Impact:** Anti-reverse engineering measures could:
   - Prevent the app from running on jailbroken devices used by accessibility users
   - Interfere with legitimate debugging and crash reporting
   - Create compatibility issues with future iOS versions
   - Frustrate developers and contributors trying to enhance the app

**Conclusion:** Given that TTRPGCharacterForge is a source-available application with no sensitive data, proprietary algorithms, or financial transactions, implementing reverse engineering detection would provide no security benefit while adding complexity and potentially degrading user experience. This alert is dismissed as not applicable to TTRPGCharacterForge's source-available nature and threat model.

**Review:** This decision should be re-evaluated if the application's functionality changes to include:
- Proprietary or licensed content that requires protection
- Backend integration with services requiring API key protection
- In-app purchases or payment processing
- User authentication with sensitive account data
- Intellectual property or trade secrets in the codebase

## Security Best Practices

While we have dismissed certain alerts as not applicable, we remain committed to following security best practices appropriate for our application:

1. **Secure Coding:** We follow Swift and iOS security best practices in our development
2. **Dependency Management:** We minimize external dependencies and keep the codebase simple
3. **Code Review:** All changes undergo review before merging
4. **Regular Scanning:** We run automated security scans via MobSF on a regular schedule
5. **Localization Security:** We ensure localization strings don't introduce security issues

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| Latest  | :white_check_mark: |
| Older   | :x:                |

We only support the latest version of the application. Please update to the latest release for any security fixes.
