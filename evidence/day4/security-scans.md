# Day 4 — Infrastructure and Configuration Security Scans

## Overview
This stage extends the DevSecOps pipeline beyond application code to include container, Kubernetes, and infrastructure security. The goal is to detect misconfigurations and vulnerabilities across all layers of the system.

---

## 1. Trivy Container Scan

**Target:** python:3.9-slim  
**Purpose:** Identify known vulnerabilities (CVEs) in base image.

### Findings
- HIGH/CRITICAL vulnerabilities detected
- Example:
  - CVE-XXXX-XXXX (HIGH)
  - CVE-XXXX-XXXX (CRITICAL)

### Impact
Base image vulnerabilities can propagate into production systems, exposing applications even when application code is secure.

---

## 2. Trivy Kubernetes Scan

**Target:** infra/kubernetes/base  

### Findings (Mapped)

| Finding | Mapping |
|--------|--------|
| No resource limits | CK-04 |
| No securityContext | CK-05 |
| Privileged container (if present) | CK-06 |
| No network policies | CK-07 |

### Impact
Misconfigured Kubernetes manifests increase the attack surface and weaken runtime isolation.

---

## 3. Checkov Terraform Scan

**Target:** infra/terraform  

### Findings (Mapped)

| Finding | Mapping |
|--------|--------|
| Over-permissive IAM roles | IV-08 |
| Public S3 bucket | IV-09 |
| Public subnet exposure | IV-10 |

### Impact
Infrastructure misconfigurations can lead to data exposure, privilege escalation, and external attack vectors.

---

## 4. Pipeline Behaviour

| Stage | Behaviour |
|------|--------|
| Gitleaks | Hard fail |
| SonarCloud | Soft fail |
| Trivy | Hard fail |
| Checkov | Soft fail |

### Rationale
- Hard fail is applied where risk is immediate (secrets, CVEs)
- Soft fail is applied where findings require triage (code issues, IaC)

---

## Conclusion
The pipeline demonstrates layered security coverage across:
- Secrets
- Application code
- Container images
- Kubernetes manifests
- Infrastructure as Code

This aligns with the DevSecOps principle of shifting security left and integrating automated controls throughout the development lifecycle.