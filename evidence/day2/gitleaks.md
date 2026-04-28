# Gitleaks Research Notes

## Overview
Gitleaks is a static analysis tool used to detect secrets in source code repositories. It scans files for patterns and high-entropy strings that may indicate sensitive data such as API keys, passwords, or tokens.

---

## Detection Methodology

### 1. Pattern-Based Detection
- Uses predefined regex rules
- Matches known secret formats (e.g., AWS keys, tokens)

### 2. Entropy-Based Detection
- Identifies random-looking strings
- High entropy suggests potential secrets
- Useful for detecting unknown or custom secrets

---

## Configuration (.gitleaks.toml)

- Custom rules can be defined
- Allows tuning of:
  - Regex patterns
  - Entropy thresholds
  - Allowlists (false positives)

---

## Strengths
- Fast and lightweight
- Effective for detecting committed secrets
- Integrates easily into CI/CD pipelines

---

## Limitations
- May produce false positives
- Cannot validate if a secret is active or exploitable
- Does not detect runtime vulnerabilities

---

## Use in DevSecOps Pipeline

Gitleaks will be used in the CI pipeline to:
- Scan every commit and pull request
- Detect exposed secrets early
- Prevent secrets from being merged into the main branch

---

## Conclusion

Gitleaks provides an effective first line of defence against secret leakage in source code. When integrated into CI/CD, it supports the “shift-left” principle by identifying risks early in the development lifecycle.