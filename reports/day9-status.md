# Day 9 Status — SecureFlow

## Green
- SecureFlow application pods are running in Kubernetes.
- Vault Agent Injector is working across application services and database pods.
- Secrets are mounted as files under `/vault/secrets/`.
- Application containers run as non-root users.
- Kubernetes manifests include resource limits, labels, seccomp profiles, and dropped Linux capabilities.
- NetworkPolicies have been authored and applied.
- Falco is installed and detecting runtime activity.
- Trivy and Checkov reports have been generated.

## Red / Limitations
- Minikube NetworkPolicy enforcement is limited because the current CNI does not enforce policies.
- Vault is running in dev mode with in-memory storage.
- Some scanner findings may remain and need to be documented or remediated.

## Evidence Captured
- `kubectl get pods -n secureflow`
- `kubectl get netpol -n secureflow`
- `kubectl get pods -n falco`
- Falco shell-spawn alert logs
- Trivy Kubernetes scan output
- Checkov Terraform scan output
- Vault secret injection verification

## Open Questions for Day 10
- Which remaining Trivy/Checkov findings are accepted, remediated, or documented as limitations?
- Are all final report screenshots captured and redacted?
- Is the final pipeline run evidence ready?