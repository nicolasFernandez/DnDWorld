# Security Policy

## Overview

DnDWorld is an iOS character generator application for Dungeons & Dragons 5th Edition. This document outlines our security approach and documents decisions regarding code scanning alerts.

## Reporting Security Issues

If you discover a security vulnerability in DnDWorld, please email the maintainers directly at the contact information provided in the repository. Please do not create public issues for security vulnerabilities.

## Code Scanning Alerts

We use MobSF (Mobile Security Framework) for automated security scanning. Below are documented decisions regarding specific alerts:

### Alert #4: Jailbreak Detection (ios_jailbreak_detect)

**Status:** Dismissed  
**Level:** Note  
**Related Issue:** #62  
**Decision Date:** 2025-10-11

**Rationale for Dismissal:**

This alert recommends implementing jailbreak detection capabilities in the iOS application. After careful evaluation, we have decided to dismiss this alert for the following reasons:

1. **Application Nature:** DnDWorld is a character generator tool for tabletop gaming. It does not:
   - Handle sensitive financial information
   - Process personal identifiable information (PII)
   - Require authentication or user accounts
   - Store or transmit sensitive data
   - Connect to external services or APIs

2. **Risk Assessment:** The primary security concern for jailbreak detection is protecting sensitive data and preventing unauthorized access to protected content. Since DnDWorld:
   - Operates entirely offline
   - Uses only locally stored, non-sensitive game data (D&D rules and character information)
   - Does not implement DRM or content protection mechanisms
   - Has no server-side components to protect

   The risk profile does not justify the complexity and maintenance burden of jailbreak detection.

3. **User Experience:** Implementing jailbreak detection could:
   - Prevent legitimate users on jailbroken devices from using the app
   - Create false positives that block valid use cases
   - Add unnecessary complexity to the codebase

4. **Best Practice Context:** While jailbreak detection is a recommended best practice for apps handling sensitive data or requiring enhanced security, it is not universally required for all iOS applications. The OWASP Mobile Security Testing Guide (MSTG-RESILIENCE-1) acknowledges this is relevant for apps with heightened security requirements.

**Conclusion:** Given the non-sensitive nature of the application and its data, implementing jailbreak detection would provide minimal security benefit while adding complexity and potentially degrading user experience. This alert is dismissed as not applicable to DnDWorld's threat model.

**Review:** This decision should be re-evaluated if the application's functionality changes to include:
- User authentication
- Storage of personal data
- Payment processing
- Network communication with sensitive APIs
- DRM or content protection requirements

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
