# Password Hash Cracking & Security Analysis Lab (Hashcat)

> **Legal & ethical note:** Use this lab only on systems and accounts you own or have explicit authorization to test.

## Goal

Build a small lab on Kali Linux to generate password hashes, test weak passwords, run Hashcat attacks, and document mitigations.

## Included sample hashes

- `hashes/md5_hashes.txt` (mode 0)
- `hashes/sha1_hashes.txt` (mode 100)
- `hashes/sha256_hashes.txt` (mode 1400)
- `hashes/bcrypt_hashes.txt` (mode 3200)

## Attacks

Dictionary (rockyou) and mask example:

```bash
hashcat -m 0 -a 3 hashes/md5_hashes.txt ?l?u?d?l?u?d?l?d -o results_md5_mask.txt
```

## Repo structure

- hashes/
- scripts/
- report/
