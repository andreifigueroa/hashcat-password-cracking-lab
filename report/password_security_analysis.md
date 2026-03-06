# Password Security Analysis (Hashcat Lab)

## Summary
This lab demonstrates how easily weak, common passwords can be recovered when hashes and wordlists are available, especially for fast unsalted hashes.

## Cracking results (expected)
- MD5 / SHA1 / SHA256 hashes generated from common passwords are usually crackable quickly with a dictionary attack.
- bcrypt is intentionally slower; cracking may take much longer or require more compute.

## Recommendations
- Enforce strong, unique passwords and encourage password managers
- Enable multi-factor authentication (MFA) wherever possible
- Use salts and slow password hashing algorithms (bcrypt/Argon2) instead of fast hash functions
- Apply rate limiting and account lockout controls for failed logins
- Monitor for credential stuffing and common password reuse
