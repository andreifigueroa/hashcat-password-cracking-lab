#!/usr/bin/env bash
set -euo pipefail

# Password Hash Cracking & Security Analysis Lab (Hashcat)
# Use only on systems/accounts you own or have explicit permission to test.

HASHES_DIR="hashes"
WORDLIST="/usr/share/wordlists/rockyou.txt"
LOG_DIR="logs"

mkdir -p "$LOG_DIR"

# Dictionary attacks
hashcat -m 0 -a 0 "$HASHES_DIR/md5_hashes.txt" "$WORDLIST" --session md5_dict --potfile-path "$LOG_DIR/md5.pot"
hashcat -m 100 -a 0 "$HASHES_DIR/sha1_hashes.txt" "$WORDLIST" --session sha1_dict --potfile-path "$LOG_DIR/sha1.pot"
hashcat -m 1400 -a 0 "$HASHES_DIR/sha256_hashes.txt" "$WORDLIST" --session sha256_dict --potfile-path "$LOG_DIR/sha256.pot"

# bcrypt takes longer to crack than unsalted hashes.
hashcat -m 3200 -a 0 "$HASHES_DIR/bcrypt_hashes.txt" "$WORDLIST" --session bcrypt_dict --potfile-path "$LOG_DIR/bcrypt.pot"

# Show results
hashcat -m 0 --show "$HASHES_DIR/md5_hashes.txt" --potfile-path "$LOG_DIR/md5.pot"
hashcat -m 100 --show "$HASHES_DIR/sha1_hashes.txt" --potfile-path "$LOG_DIR/sha1.pot"
hashcat -m 1400 --show "$HASHES_DIR/sha256_hashes.txt" --potfile-path "$LOG_DIR/sha256.pot"
hashcat -m 3200 --show "$HASHES_DIR/bcrypt_hashes.txt" --potfile-path "$LOG_DIR/bcrypt.pot"
