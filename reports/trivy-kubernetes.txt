
auth-service.yaml (kubernetes)
==============================
Tests: 99 (SUCCESSES: 97, FAILURES: 2, EXCEPTIONS: 0)
Failures: 2 (UNKNOWN: 0, LOW: 1, MEDIUM: 0, HIGH: 1, CRITICAL: 0)

HIGH: Container 'auth-service' of Deployment 'auth-service' should set 'securityContext.readOnlyRootFilesystem' to true
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
An immutable root file system prevents applications from writing to their local disk. This can limit intrusions, as attackers will not be able to tamper with the file system or write foreign executables to disk.

See https://avd.aquasec.com/misconfig/ksv014
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 auth-service.yaml:26-65
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  26 ┌         - name: auth-service
  27 │           # CK-06 — :latest tag - remediated
  28 │           image: secureflow/auth-service:v1
  29 │           imagePullPolicy: IfNotPresent
  30 │           ports:
  31 │             - containerPort: 5001
  32 │           # envFrom:
  33 │           #   - configMapRef:
  34 └           #       name: secureflow-config
  ..   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


LOW: Container 'auth-service' of Deployment 'auth-service' should set 'securityContext.runAsGroup' > 10000
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
Force the container to run with group ID > 10000 to avoid conflicts with the host’s user table.

See https://avd.aquasec.com/misconfig/ksv021
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 auth-service.yaml:26-65
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  26 ┌         - name: auth-service
  27 │           # CK-06 — :latest tag - remediated
  28 │           image: secureflow/auth-service:v1
  29 │           imagePullPolicy: IfNotPresent
  30 │           ports:
  31 │             - containerPort: 5001
  32 │           # envFrom:
  33 │           #   - configMapRef:
  34 └           #       name: secureflow-config
  ..   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────



databases.yaml (kubernetes)
===========================
Tests: 111 (SUCCESSES: 97, FAILURES: 14, EXCEPTIONS: 0)
Failures: 14 (UNKNOWN: 0, LOW: 8, MEDIUM: 4, HIGH: 2, CRITICAL: 0)

MEDIUM: Container 'postgres' of Deployment 'auth-db' should set 'securityContext.allowPrivilegeEscalation' to false
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
A program inside the container can elevate its own privileges and run as root, which might give the program control over the container and node.

See https://avd.aquasec.com/misconfig/ksv001
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 databases.yaml:31-54
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  31 ┌         - name: postgres
  32 │           image: postgres@sha256:bbb8851608e3ff4901156bf6a4bf90735a9d44ae014c03811bfdb2f9c354b18b
  33 │           imagePullPolicy: IfNotPresent
  34 │           command: ["/bin/bash", "-c"]
  35 │           args:
  36 │             - source /vault/secrets/postgres.env && docker-entrypoint.sh postgres
  37 │           env:
  38 │             - name: POSTGRES_DB
  39 └               value: authdb
  ..   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


MEDIUM: Container 'postgres' of Deployment 'transaction-db' should set 'securityContext.allowPrivilegeEscalation' to false
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
A program inside the container can elevate its own privileges and run as root, which might give the program control over the container and node.

See https://avd.aquasec.com/misconfig/ksv001
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 databases.yaml:101-124
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 101 ┌         - name: postgres
 102 │           image: postgres@sha256:bbb8851608e3ff4901156bf6a4bf90735a9d44ae014c03811bfdb2f9c354b18b
 103 │           imagePullPolicy: IfNotPresent
 104 │           command: ["/bin/bash", "-c"]
 105 │           args:
 106 │             - source /vault/secrets/postgres.env && docker-entrypoint.sh postgres
 107 │           env:
 108 │             - name: POSTGRES_DB
 109 └               value: transactiondb
 ...   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


LOW: Container 'postgres' of Deployment 'auth-db' should add 'ALL' to 'securityContext.capabilities.drop'
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
The container should drop all default capabilities and add only those that are needed for its execution.

See https://avd.aquasec.com/misconfig/ksv003
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 databases.yaml:31-54
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  31 ┌         - name: postgres
  32 │           image: postgres@sha256:bbb8851608e3ff4901156bf6a4bf90735a9d44ae014c03811bfdb2f9c354b18b
  33 │           imagePullPolicy: IfNotPresent
  34 │           command: ["/bin/bash", "-c"]
  35 │           args:
  36 │             - source /vault/secrets/postgres.env && docker-entrypoint.sh postgres
  37 │           env:
  38 │             - name: POSTGRES_DB
  39 └               value: authdb
  ..   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


LOW: Container 'postgres' of Deployment 'transaction-db' should add 'ALL' to 'securityContext.capabilities.drop'
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
The container should drop all default capabilities and add only those that are needed for its execution.

See https://avd.aquasec.com/misconfig/ksv003
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 databases.yaml:101-124
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 101 ┌         - name: postgres
 102 │           image: postgres@sha256:bbb8851608e3ff4901156bf6a4bf90735a9d44ae014c03811bfdb2f9c354b18b
 103 │           imagePullPolicy: IfNotPresent
 104 │           command: ["/bin/bash", "-c"]
 105 │           args:
 106 │             - source /vault/secrets/postgres.env && docker-entrypoint.sh postgres
 107 │           env:
 108 │             - name: POSTGRES_DB
 109 └               value: transactiondb
 ...   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


MEDIUM: Container 'postgres' of Deployment 'auth-db' should set 'securityContext.runAsNonRoot' to true
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
Force the running image to run as a non-root user to ensure least privileges.

See https://avd.aquasec.com/misconfig/ksv012
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 databases.yaml:31-54
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  31 ┌         - name: postgres
  32 │           image: postgres@sha256:bbb8851608e3ff4901156bf6a4bf90735a9d44ae014c03811bfdb2f9c354b18b
  33 │           imagePullPolicy: IfNotPresent
  34 │           command: ["/bin/bash", "-c"]
  35 │           args:
  36 │             - source /vault/secrets/postgres.env && docker-entrypoint.sh postgres
  37 │           env:
  38 │             - name: POSTGRES_DB
  39 └               value: authdb
  ..   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


MEDIUM: Container 'postgres' of Deployment 'transaction-db' should set 'securityContext.runAsNonRoot' to true
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
Force the running image to run as a non-root user to ensure least privileges.

See https://avd.aquasec.com/misconfig/ksv012
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 databases.yaml:101-124
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 101 ┌         - name: postgres
 102 │           image: postgres@sha256:bbb8851608e3ff4901156bf6a4bf90735a9d44ae014c03811bfdb2f9c354b18b
 103 │           imagePullPolicy: IfNotPresent
 104 │           command: ["/bin/bash", "-c"]
 105 │           args:
 106 │             - source /vault/secrets/postgres.env && docker-entrypoint.sh postgres
 107 │           env:
 108 │             - name: POSTGRES_DB
 109 └               value: transactiondb
 ...   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


HIGH: Container 'postgres' of Deployment 'auth-db' should set 'securityContext.readOnlyRootFilesystem' to true
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
An immutable root file system prevents applications from writing to their local disk. This can limit intrusions, as attackers will not be able to tamper with the file system or write foreign executables to disk.

See https://avd.aquasec.com/misconfig/ksv014
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 databases.yaml:31-54
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  31 ┌         - name: postgres
  32 │           image: postgres@sha256:bbb8851608e3ff4901156bf6a4bf90735a9d44ae014c03811bfdb2f9c354b18b
  33 │           imagePullPolicy: IfNotPresent
  34 │           command: ["/bin/bash", "-c"]
  35 │           args:
  36 │             - source /vault/secrets/postgres.env && docker-entrypoint.sh postgres
  37 │           env:
  38 │             - name: POSTGRES_DB
  39 └               value: authdb
  ..   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


HIGH: Container 'postgres' of Deployment 'transaction-db' should set 'securityContext.readOnlyRootFilesystem' to true
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
An immutable root file system prevents applications from writing to their local disk. This can limit intrusions, as attackers will not be able to tamper with the file system or write foreign executables to disk.

See https://avd.aquasec.com/misconfig/ksv014
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 databases.yaml:101-124
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 101 ┌         - name: postgres
 102 │           image: postgres@sha256:bbb8851608e3ff4901156bf6a4bf90735a9d44ae014c03811bfdb2f9c354b18b
 103 │           imagePullPolicy: IfNotPresent
 104 │           command: ["/bin/bash", "-c"]
 105 │           args:
 106 │             - source /vault/secrets/postgres.env && docker-entrypoint.sh postgres
 107 │           env:
 108 │             - name: POSTGRES_DB
 109 └               value: transactiondb
 ...   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


LOW: Container 'postgres' of Deployment 'auth-db' should set 'securityContext.runAsUser' > 10000
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
Force the container to run with user ID > 10000 to avoid conflicts with the host’s user table.

See https://avd.aquasec.com/misconfig/ksv020
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 databases.yaml:31-54
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  31 ┌         - name: postgres
  32 │           image: postgres@sha256:bbb8851608e3ff4901156bf6a4bf90735a9d44ae014c03811bfdb2f9c354b18b
  33 │           imagePullPolicy: IfNotPresent
  34 │           command: ["/bin/bash", "-c"]
  35 │           args:
  36 │             - source /vault/secrets/postgres.env && docker-entrypoint.sh postgres
  37 │           env:
  38 │             - name: POSTGRES_DB
  39 └               value: authdb
  ..   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


LOW: Container 'postgres' of Deployment 'transaction-db' should set 'securityContext.runAsUser' > 10000
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
Force the container to run with user ID > 10000 to avoid conflicts with the host’s user table.

See https://avd.aquasec.com/misconfig/ksv020
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 databases.yaml:101-124
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 101 ┌         - name: postgres
 102 │           image: postgres@sha256:bbb8851608e3ff4901156bf6a4bf90735a9d44ae014c03811bfdb2f9c354b18b
 103 │           imagePullPolicy: IfNotPresent
 104 │           command: ["/bin/bash", "-c"]
 105 │           args:
 106 │             - source /vault/secrets/postgres.env && docker-entrypoint.sh postgres
 107 │           env:
 108 │             - name: POSTGRES_DB
 109 └               value: transactiondb
 ...   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


LOW: Container 'postgres' of Deployment 'auth-db' should set 'securityContext.runAsGroup' > 10000
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
Force the container to run with group ID > 10000 to avoid conflicts with the host’s user table.

See https://avd.aquasec.com/misconfig/ksv021
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 databases.yaml:31-54
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  31 ┌         - name: postgres
  32 │           image: postgres@sha256:bbb8851608e3ff4901156bf6a4bf90735a9d44ae014c03811bfdb2f9c354b18b
  33 │           imagePullPolicy: IfNotPresent
  34 │           command: ["/bin/bash", "-c"]
  35 │           args:
  36 │             - source /vault/secrets/postgres.env && docker-entrypoint.sh postgres
  37 │           env:
  38 │             - name: POSTGRES_DB
  39 └               value: authdb
  ..   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


LOW: Container 'postgres' of Deployment 'transaction-db' should set 'securityContext.runAsGroup' > 10000
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
Force the container to run with group ID > 10000 to avoid conflicts with the host’s user table.

See https://avd.aquasec.com/misconfig/ksv021
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 databases.yaml:101-124
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 101 ┌         - name: postgres
 102 │           image: postgres@sha256:bbb8851608e3ff4901156bf6a4bf90735a9d44ae014c03811bfdb2f9c354b18b
 103 │           imagePullPolicy: IfNotPresent
 104 │           command: ["/bin/bash", "-c"]
 105 │           args:
 106 │             - source /vault/secrets/postgres.env && docker-entrypoint.sh postgres
 107 │           env:
 108 │             - name: POSTGRES_DB
 109 └               value: transactiondb
 ...   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


LOW: container should drop all
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
Containers must drop ALL capabilities, and are only permitted to add back the NET_BIND_SERVICE capability.

See https://avd.aquasec.com/misconfig/ksv106
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 databases.yaml:31-54
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  31 ┌         - name: postgres
  32 │           image: postgres@sha256:bbb8851608e3ff4901156bf6a4bf90735a9d44ae014c03811bfdb2f9c354b18b
  33 │           imagePullPolicy: IfNotPresent
  34 │           command: ["/bin/bash", "-c"]
  35 │           args:
  36 │             - source /vault/secrets/postgres.env && docker-entrypoint.sh postgres
  37 │           env:
  38 │             - name: POSTGRES_DB
  39 └               value: authdb
  ..   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


LOW: container should drop all
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
Containers must drop ALL capabilities, and are only permitted to add back the NET_BIND_SERVICE capability.

See https://avd.aquasec.com/misconfig/ksv106
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 databases.yaml:101-124
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 101 ┌         - name: postgres
 102 │           image: postgres@sha256:bbb8851608e3ff4901156bf6a4bf90735a9d44ae014c03811bfdb2f9c354b18b
 103 │           imagePullPolicy: IfNotPresent
 104 │           command: ["/bin/bash", "-c"]
 105 │           args:
 106 │             - source /vault/secrets/postgres.env && docker-entrypoint.sh postgres
 107 │           env:
 108 │             - name: POSTGRES_DB
 109 └               value: transactiondb
 ...   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────



frontend.yaml (kubernetes)
==========================
Tests: 99 (SUCCESSES: 97, FAILURES: 2, EXCEPTIONS: 0)
Failures: 2 (UNKNOWN: 0, LOW: 1, MEDIUM: 0, HIGH: 1, CRITICAL: 0)

HIGH: Container 'frontend' of Deployment 'frontend' should set 'securityContext.readOnlyRootFilesystem' to true
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
An immutable root file system prevents applications from writing to their local disk. This can limit intrusions, as attackers will not be able to tamper with the file system or write foreign executables to disk.

See https://avd.aquasec.com/misconfig/ksv014
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 frontend.yaml:25-50
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  25 ┌         - name: frontend
  26 │           image: secureflow/frontend:v1 #CK-06 remediated
  27 │           imagePullPolicy: IfNotPresent
  28 │           ports:
  29 │             - containerPort: 5000
  30 │           # envFrom:
  31 │           #   - configMapRef:
  32 │           #       name: secureflow-config
  33 └           securityContext:
  ..   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


LOW: Container 'frontend' of Deployment 'frontend' should set 'securityContext.runAsGroup' > 10000
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
Force the container to run with group ID > 10000 to avoid conflicts with the host’s user table.

See https://avd.aquasec.com/misconfig/ksv021
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 frontend.yaml:25-50
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  25 ┌         - name: frontend
  26 │           image: secureflow/frontend:v1 #CK-06 remediated
  27 │           imagePullPolicy: IfNotPresent
  28 │           ports:
  29 │             - containerPort: 5000
  30 │           # envFrom:
  31 │           #   - configMapRef:
  32 │           #       name: secureflow-config
  33 └           securityContext:
  ..   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────



transaction-service.yaml (kubernetes)
=====================================
Tests: 99 (SUCCESSES: 97, FAILURES: 2, EXCEPTIONS: 0)
Failures: 2 (UNKNOWN: 0, LOW: 1, MEDIUM: 0, HIGH: 1, CRITICAL: 0)

HIGH: Container 'transaction-service' of Deployment 'transaction-service' should set 'securityContext.readOnlyRootFilesystem' to true
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
An immutable root file system prevents applications from writing to their local disk. This can limit intrusions, as attackers will not be able to tamper with the file system or write foreign executables to disk.

See https://avd.aquasec.com/misconfig/ksv014
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 transaction-service.yaml:25-62
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  25 ┌         - name: transaction-service
  26 │           image: secureflow/transaction-service:v1 # CK-06 remediated
  27 │           imagePullPolicy: IfNotPresent
  28 │           ports:
  29 │             - containerPort: 5002
  30 │           # envFrom:
  31 │           #   - configMapRef:
  32 │           #       name: secureflow-config
  33 └           env:
  ..   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


LOW: Container 'transaction-service' of Deployment 'transaction-service' should set 'securityContext.runAsGroup' > 10000
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
Force the container to run with group ID > 10000 to avoid conflicts with the host’s user table.

See https://avd.aquasec.com/misconfig/ksv021
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 transaction-service.yaml:25-62
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
  25 ┌         - name: transaction-service
  26 │           image: secureflow/transaction-service:v1 # CK-06 remediated
  27 │           imagePullPolicy: IfNotPresent
  28 │           ports:
  29 │             - containerPort: 5002
  30 │           # envFrom:
  31 │           #   - configMapRef:
  32 │           #       name: secureflow-config
  33 └           env:
  ..   
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


