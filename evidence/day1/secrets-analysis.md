
---

## 📄 `evidence/security-analysis.md`

```md
# Security Analysis — Secrets and Configuration

## Overview
This document provides an analysis of sensitive data exposure and security weaknesses identified in the SecureFlow application configuration and environment.

---

## 1. Secrets Inventory

| Secret                     | Location               | Type                  | Risk Level |             Impact                                  |
|---------------------------|------------------------|-----------------------|------------|------------------------------------------|
| authpass123               | docker-compose.yml     | Database credential   | Critical   | Direct database compromise               |
| txpass123                 | docker-compose.yml     | Database credential   | Critical   | Financial data manipulation              |
| super-secret-key-123      | docker-compose.yml     | JWT signing key       | Critical   | Authentication bypass                    |
| changeme                  | docker-compose.yml     | Session secret        | High       | Session hijacking                        |
| Service URLs              | Environment variables  | Internal endpoints    | Medium     | Enables service discovery                |

---

## 2. Key Observations

- Secrets are hardcoded directly in infrastructure files
- No use of external secret management (e.g., environment files or vaults)
- Secrets are shared across multiple services
- No rotation or encryption mechanisms are implemented

---

## 3. Exploit Scenarios

### 3.1 Direct Database Compromise

#### Evidence
Databases are exposed on host ports and credentials are known.

#### Attack Path
- Attacker connects using:
psql -h localhost -p 5432 -U authuser

- Gains direct access to database contents

#### Impact
- Full read/write access to user and transaction data
- Data exfiltration and manipulation

---

### 3.2 JWT Forgery

#### Evidence
JWT signing key is exposed:
super-secret-key-123


#### Attack Path
- Attacker generates valid tokens offline
- Bypasses authentication controls

#### Impact
- Full account takeover
- Unauthorised access to protected endpoints

---

### 3.3 Session Hijacking

#### Evidence
Weak session secret:
changeme


#### Attack Path
- Attacker tampers with session cookies
- Predicts or forges valid session identifiers

#### Impact
- User impersonation
- Unauthorised actions within the application

---

### 3.4 Lateral Movement Between Services

#### Evidence
All services share the same network with no isolation.

#### Attack Path
- Compromise one service
- Use internal service URLs to access others

#### Impact
- Expansion of attack scope
- Compromise of entire system

---

## 4. Security Implications

- Authentication integrity is compromised due to exposed cryptographic keys
- Data confidentiality is weakened by direct database access
- System lacks defence-in-depth mechanisms
- Attack surface is significantly increased

---

## 5. Conclusion

The SecureFlow application demonstrates multiple critical security weaknesses stemming from improper secret management and insecure configuration practices. The exposure of credentials and lack of isolation mechanisms create a high-risk environment that is vulnerable to both external and internal threats.

These findings provide a foundation for implementing automated detection and remediation controls within the DevSecOps pipeline.