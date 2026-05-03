# Security Gate Policy — SecureFlow

## 1. Purpose
This document defines how security findings from the CI/CD pipeline are evaluated and enforced.

---

## 2. Ownership Model

| Category        | Tool        | Owner        | Action        |
|----------------|------------|-------------|--------------|
| Secrets        | Gitleaks   | DevSecOps   | HARD FAIL    |
| Containers     | Trivy      | DevSecOps   | HARD FAIL    |
| Kubernetes     | Trivy      | DevSecOps   | HARD FAIL    |
| IaC            | Checkov    | DevSecOps   | HARD FAIL    |
| Application    | SonarCloud | AppSec      | SOFT FAIL    |

---

## 3. Gate Rules

### Hard Fail (Block Pipeline)
The pipeline fails immediately if:

- Any secrets are detected (Gitleaks)
- Any CRITICAL/HIGH vulnerabilities in:
  - Container images
  - Kubernetes manifests
  - Terraform configurations

---

### Soft Fail (Non-blocking)
- SonarCloud findings do NOT block the pipeline
- Findings are reported for AppSec review

---

## 4. Exception Process

Developers may request exceptions using:

/security-exception <reason>

Approval must be granted by:
- DevSecOps Lead OR
- Security Reviewer

---

## 5. Handoff to AppSec

AppSec findings must include:
- Tool (SonarCloud)
- Severity
- File + line
- Description
- Suggested remediation

---

## 6. Rationale

Secrets and infrastructure risks are immediately exploitable → block

Application issues require deeper validation → route to AppSec