

       _               _
   ___| |__   ___  ___| | _______   __
  / __| '_ \ / _ \/ __| |/ / _ \ \ / /
 | (__| | | |  __/ (__|   < (_) \ V /
  \___|_| |_|\___|\___|_|\_\___/ \_/

By Prisma Cloud | version: 3.2.521 
Update available 3.2.521 -> 3.2.526
Run pip3 install -U checkov to update 


terraform scan results:

Passed checks: 153, Failed checks: 8, Skipped checks: 5

Check: CKV_AWS_41: "Ensure no hard coded AWS access key and secret key exists in provider"
	PASSED for resource: aws.default
	File: /main.tf:15-17
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/secrets-policies/bc-aws-secrets-5
Check: CKV_AWS_61: "Ensure AWS IAM policy does not allow assume role permission across all services"
	PASSED for resource: module.eks.aws_iam_role.cluster
	File: /modules/eks/main.tf:6-19
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-45
Check: CKV_AWS_60: "Ensure IAM role allows only specific services or principals to assume it"
	PASSED for resource: module.eks.aws_iam_role.cluster
	File: /modules/eks/main.tf:6-19
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-44
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.eks.aws_iam_role.cluster
	File: /modules/eks/main.tf:6-19
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.eks.aws_iam_role_policy_attachment.cluster_policy
	File: /modules/eks/main.tf:21-24
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_33: "Ensure KMS key policy does not contain wildcard (*) principal"
	PASSED for resource: module.eks.aws_kms_key.eks
	File: /modules/eks/main.tf:26-29
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/ensure-kms-key-policy-does-not-contain-wildcard-principal
Check: CKV_AWS_227: "Ensure KMS key is enabled"
	PASSED for resource: module.eks.aws_kms_key.eks
	File: /modules/eks/main.tf:26-29
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-aws-key-management-service-kms-key-is-enabled
Check: CKV_AWS_7: "Ensure rotation for customer created CMKs is enabled"
	PASSED for resource: module.eks.aws_kms_key.eks
	File: /modules/eks/main.tf:26-29
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/logging-8
Check: CKV_AWS_58: "Ensure EKS Cluster has Secrets Encryption Enabled"
	PASSED for resource: module.eks.aws_eks_cluster.main
	File: /modules/eks/main.tf:31-59
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-kubernetes-policies/bc-aws-kubernetes-3
Check: CKV_AWS_39: "Ensure Amazon EKS public endpoint disabled"
	PASSED for resource: module.eks.aws_eks_cluster.main
	File: /modules/eks/main.tf:31-59
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-kubernetes-policies/bc-aws-kubernetes-2
Check: CKV_AWS_339: "Ensure EKS clusters run on a supported Kubernetes version"
	PASSED for resource: module.eks.aws_eks_cluster.main
	File: /modules/eks/main.tf:31-59
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-kubernetes-policies/bc-aws-339
Check: CKV_AWS_38: "Ensure Amazon EKS public endpoint not accessible to 0.0.0.0/0"
	PASSED for resource: module.eks.aws_eks_cluster.main
	File: /modules/eks/main.tf:31-59
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-kubernetes-policies/bc-aws-kubernetes-1
Check: CKV_AWS_37: "Ensure Amazon EKS control plane logging is enabled for all log types"
	PASSED for resource: module.eks.aws_eks_cluster.main
	File: /modules/eks/main.tf:31-59
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-kubernetes-policies/bc-aws-kubernetes-4
Check: CKV_AWS_61: "Ensure AWS IAM policy does not allow assume role permission across all services"
	PASSED for resource: module.eks.aws_iam_role.node_group
	File: /modules/eks/main.tf:61-74
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-45
Check: CKV_AWS_60: "Ensure IAM role allows only specific services or principals to assume it"
	PASSED for resource: module.eks.aws_iam_role.node_group
	File: /modules/eks/main.tf:61-74
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-44
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.eks.aws_iam_role.node_group
	File: /modules/eks/main.tf:61-74
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.eks.aws_iam_role_policy_attachment.node_worker
	File: /modules/eks/main.tf:76-79
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.eks.aws_iam_role_policy_attachment.node_cni
	File: /modules/eks/main.tf:81-84
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.eks.aws_iam_role_policy_attachment.node_ecr
	File: /modules/eks/main.tf:86-89
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_100: "Ensure AWS EKS node group does not have implicit SSH access from 0.0.0.0/0"
	PASSED for resource: module.eks.aws_eks_node_group.main
	File: /modules/eks/main.tf:91-110
	Calling File: /main.tf:55-61
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-kubernetes-policies/bc-aws-kubernetes-5
Check: CKV_AWS_61: "Ensure AWS IAM policy does not allow assume role permission across all services"
	PASSED for resource: module.iam.aws_iam_role.eks_node
	File: /modules/iam/main.tf:3-16
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-45
Check: CKV_AWS_60: "Ensure IAM role allows only specific services or principals to assume it"
	PASSED for resource: module.iam.aws_iam_role.eks_node
	File: /modules/iam/main.tf:3-16
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-44
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.iam.aws_iam_role.eks_node
	File: /modules/iam/main.tf:3-16
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.iam.aws_iam_role_policy_attachment.worker_node
	File: /modules/iam/main.tf:18-21
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.iam.aws_iam_role_policy_attachment.cni
	File: /modules/iam/main.tf:23-26
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.iam.aws_iam_role_policy_attachment.ecr_readonly
	File: /modules/iam/main.tf:28-31
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_61: "Ensure AWS IAM policy does not allow assume role permission across all services"
	PASSED for resource: module.iam.aws_iam_role.app_role
	File: /modules/iam/main.tf:33-46
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-45
Check: CKV_AWS_60: "Ensure IAM role allows only specific services or principals to assume it"
	PASSED for resource: module.iam.aws_iam_role.app_role
	File: /modules/iam/main.tf:33-46
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-44
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.iam.aws_iam_role.app_role
	File: /modules/iam/main.tf:33-46
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_288: "Ensure IAM policies does not allow data exfiltration"
	PASSED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:48-78
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-288
Check: CKV_AWS_289: "Ensure IAM policies does not allow permissions management / resource exposure without constraints"
	PASSED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:48-78
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-289
Check: CKV_AWS_355: "Ensure no IAM policies documents allow "*" as a statement's resource for restrictable actions"
	PASSED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:48-78
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-355
Check: CKV_AWS_286: "Ensure IAM policies does not allow privilege escalation"
	PASSED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:48-78
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-286
Check: CKV_AWS_287: "Ensure IAM policies does not allow credentials exposure"
	PASSED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:48-78
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-287
Check: CKV_AWS_290: "Ensure IAM policies does not allow write access without constraints"
	PASSED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:48-78
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-290
Check: CKV_AWS_62: "Ensure IAM policies that allow full "*-*" administrative privileges are not created"
	PASSED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:48-78
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-45
Check: CKV_AWS_63: "Ensure no IAM policies documents allow "*" as a statement's actions"
	PASSED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:48-78
	Calling File: /main.tf:45-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/iam-48
Check: CKV_AWS_277: "Ensure no security groups allow ingress from 0.0.0.0:0 to port -1"
	PASSED for resource: module.rds.aws_security_group.db
	File: /modules/rds/main.tf:16-28
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-aws-security-group-does-not-allow-all-traffic-on-all-ports
Check: CKV_AWS_23: "Ensure every security group and rule has a description"
	PASSED for resource: module.rds.aws_security_group.db
	File: /modules/rds/main.tf:16-28
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/networking-31
Check: CKV_AWS_382: "Ensure no security groups allow egress from 0.0.0.0:0 to port -1"
	PASSED for resource: module.rds.aws_security_group.db
	File: /modules/rds/main.tf:16-28
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/bc-aws-382
Check: CKV_AWS_24: "Ensure no security groups allow ingress from 0.0.0.0:0 to port 22"
	PASSED for resource: module.rds.aws_security_group.db
	File: /modules/rds/main.tf:16-28
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/networking-1-port-security
Check: CKV_AWS_260: "Ensure no security groups allow ingress from 0.0.0.0:0 to port 80"
	PASSED for resource: module.rds.aws_security_group.db
	File: /modules/rds/main.tf:16-28
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-aws-security-groups-do-not-allow-ingress-from-00000-to-port-80
Check: CKV_AWS_25: "Ensure no security groups allow ingress from 0.0.0.0:0 to port 3389"
	PASSED for resource: module.rds.aws_security_group.db
	File: /modules/rds/main.tf:16-28
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/networking-2
Check: CKV_AWS_33: "Ensure KMS key policy does not contain wildcard (*) principal"
	PASSED for resource: module.rds.aws_kms_key.rds
	File: /modules/rds/main.tf:30-33
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/ensure-kms-key-policy-does-not-contain-wildcard-principal
Check: CKV_AWS_227: "Ensure KMS key is enabled"
	PASSED for resource: module.rds.aws_kms_key.rds
	File: /modules/rds/main.tf:30-33
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-aws-key-management-service-kms-key-is-enabled
Check: CKV_AWS_7: "Ensure rotation for customer created CMKs is enabled"
	PASSED for resource: module.rds.aws_kms_key.rds
	File: /modules/rds/main.tf:30-33
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/logging-8
Check: CKV_AWS_61: "Ensure AWS IAM policy does not allow assume role permission across all services"
	PASSED for resource: module.rds.aws_iam_role.rds_monitoring
	File: /modules/rds/main.tf:35-48
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-45
Check: CKV_AWS_60: "Ensure IAM role allows only specific services or principals to assume it"
	PASSED for resource: module.rds.aws_iam_role.rds_monitoring
	File: /modules/rds/main.tf:35-48
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-44
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.rds.aws_iam_role.rds_monitoring
	File: /modules/rds/main.tf:35-48
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.rds.aws_iam_role_policy_attachment.rds_monitoring
	File: /modules/rds/main.tf:50-53
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_161: "Ensure RDS database has IAM authentication enabled"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/ensure-rds-database-has-iam-authentication-enabled
Check: CKV_AWS_16: "Ensure all data stored in the RDS is securely encrypted at rest"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/general-4
Check: CKV_AWS_353: "Ensure that RDS instances have performance insights enabled"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-353
Check: CKV_AWS_133: "Ensure that RDS instances has backup policy"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-rds-instances-have-backup-policy
Check: CKV_AWS_293: "Ensure that AWS database instances have deletion protection enabled"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-293
Check: CKV_AWS_354: "Ensure RDS Performance Insights are encrypted using KMS CMKs"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-354
Check: CKV_AWS_129: "Ensure that respective logs of Amazon Relational Database Service (Amazon RDS) are enabled"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/ensure-that-respective-logs-of-amazon-relational-database-service-amazon-rds-are-enabled
Check: CKV_AWS_157: "Ensure that RDS instances have Multi-AZ enabled"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/general-73
Check: CKV_AWS_211: "Ensure RDS uses a modern CaCert"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-aws-rds-uses-a-modern-cacert
Check: CKV_AWS_17: "Ensure all data stored in RDS is not publicly accessible"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/public-policies/public-2
Check: CKV_AWS_226: "Ensure DB instance gets all minor upgrades automatically"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-aws-db-instance-gets-all-minor-upgrades-automatically
Check: CKV_AWS_388: "Ensure AWS Aurora PostgreSQL is not exposed to local file read vulnerability"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Calling File: /main.tf:63-70
Check: CKV_AWS_118: "Ensure that enhanced monitoring is enabled for Amazon RDS instances"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/ensure-that-enhanced-monitoring-is-enabled-for-amazon-rds-instances
Check: CKV_AWS_161: "Ensure RDS database has IAM authentication enabled"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/ensure-rds-database-has-iam-authentication-enabled
Check: CKV_AWS_16: "Ensure all data stored in the RDS is securely encrypted at rest"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/general-4
Check: CKV_AWS_353: "Ensure that RDS instances have performance insights enabled"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-353
Check: CKV_AWS_133: "Ensure that RDS instances has backup policy"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-rds-instances-have-backup-policy
Check: CKV_AWS_293: "Ensure that AWS database instances have deletion protection enabled"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-293
Check: CKV_AWS_354: "Ensure RDS Performance Insights are encrypted using KMS CMKs"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-354
Check: CKV_AWS_129: "Ensure that respective logs of Amazon Relational Database Service (Amazon RDS) are enabled"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/ensure-that-respective-logs-of-amazon-relational-database-service-amazon-rds-are-enabled
Check: CKV_AWS_157: "Ensure that RDS instances have Multi-AZ enabled"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/general-73
Check: CKV_AWS_211: "Ensure RDS uses a modern CaCert"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-aws-rds-uses-a-modern-cacert
Check: CKV_AWS_17: "Ensure all data stored in RDS is not publicly accessible"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/public-policies/public-2
Check: CKV_AWS_226: "Ensure DB instance gets all minor upgrades automatically"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-aws-db-instance-gets-all-minor-upgrades-automatically
Check: CKV_AWS_388: "Ensure AWS Aurora PostgreSQL is not exposed to local file read vulnerability"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Calling File: /main.tf:63-70
Check: CKV_AWS_118: "Ensure that enhanced monitoring is enabled for Amazon RDS instances"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Calling File: /main.tf:63-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/ensure-that-enhanced-monitoring-is-enabled-for-amazon-rds-instances
Check: CKV_AWS_33: "Ensure KMS key policy does not contain wildcard (*) principal"
	PASSED for resource: module.s3.aws_kms_key.s3
	File: /modules/s3/main.tf:3-6
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/ensure-kms-key-policy-does-not-contain-wildcard-principal
Check: CKV_AWS_227: "Ensure KMS key is enabled"
	PASSED for resource: module.s3.aws_kms_key.s3
	File: /modules/s3/main.tf:3-6
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-aws-key-management-service-kms-key-is-enabled
Check: CKV_AWS_7: "Ensure rotation for customer created CMKs is enabled"
	PASSED for resource: module.s3.aws_kms_key.s3
	File: /modules/s3/main.tf:3-6
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/logging-8
Check: CKV_AWS_93: "Ensure S3 bucket policy does not lockout all but root user. (Prevent lockouts needing root account fixes)"
	PASSED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:8-18
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-24
Check: CKV_AWS_56: "Ensure S3 bucket has 'restrict_public_buckets' enabled"
	PASSED for resource: module.s3.aws_s3_bucket_public_access_block.audit_logs
	File: /modules/s3/main.tf:20-27
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-22
Check: CKV_AWS_55: "Ensure S3 bucket has ignore public ACLs enabled"
	PASSED for resource: module.s3.aws_s3_bucket_public_access_block.audit_logs
	File: /modules/s3/main.tf:20-27
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-21
Check: CKV_AWS_54: "Ensure S3 bucket has block public policy enabled"
	PASSED for resource: module.s3.aws_s3_bucket_public_access_block.audit_logs
	File: /modules/s3/main.tf:20-27
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-20
Check: CKV_AWS_53: "Ensure S3 bucket has block public ACLS enabled"
	PASSED for resource: module.s3.aws_s3_bucket_public_access_block.audit_logs
	File: /modules/s3/main.tf:20-27
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-19
Check: CKV_AWS_93: "Ensure S3 bucket policy does not lockout all but root user. (Prevent lockouts needing root account fixes)"
	PASSED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:63-72
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-24
Check: CKV_AWS_56: "Ensure S3 bucket has 'restrict_public_buckets' enabled"
	PASSED for resource: module.s3.aws_s3_bucket_public_access_block.artifacts
	File: /modules/s3/main.tf:74-81
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-22
Check: CKV_AWS_55: "Ensure S3 bucket has ignore public ACLs enabled"
	PASSED for resource: module.s3.aws_s3_bucket_public_access_block.artifacts
	File: /modules/s3/main.tf:74-81
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-21
Check: CKV_AWS_54: "Ensure S3 bucket has block public policy enabled"
	PASSED for resource: module.s3.aws_s3_bucket_public_access_block.artifacts
	File: /modules/s3/main.tf:74-81
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-20
Check: CKV_AWS_53: "Ensure S3 bucket has block public ACLS enabled"
	PASSED for resource: module.s3.aws_s3_bucket_public_access_block.artifacts
	File: /modules/s3/main.tf:74-81
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-19
Check: CKV_AWS_130: "Ensure VPC subnets do not assign public IP by default"
	PASSED for resource: module.vpc.aws_subnet.public[0]
	File: /modules/vpc/main.tf:32-43
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-vpc-subnets-do-not-assign-public-ip-by-default
Check: CKV_AWS_130: "Ensure VPC subnets do not assign public IP by default"
	PASSED for resource: module.vpc.aws_subnet.private[0]
	File: /modules/vpc/main.tf:45-55
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-vpc-subnets-do-not-assign-public-ip-by-default
Check: CKV_AWS_33: "Ensure KMS key policy does not contain wildcard (*) principal"
	PASSED for resource: module.vpc.aws_kms_key.flow_logs
	File: /modules/vpc/main.tf:114-117
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/ensure-kms-key-policy-does-not-contain-wildcard-principal
Check: CKV_AWS_227: "Ensure KMS key is enabled"
	PASSED for resource: module.vpc.aws_kms_key.flow_logs
	File: /modules/vpc/main.tf:114-117
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-aws-key-management-service-kms-key-is-enabled
Check: CKV_AWS_7: "Ensure rotation for customer created CMKs is enabled"
	PASSED for resource: module.vpc.aws_kms_key.flow_logs
	File: /modules/vpc/main.tf:114-117
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/logging-8
Check: CKV_AWS_66: "Ensure that CloudWatch Log Group specifies retention days"
	PASSED for resource: module.vpc.aws_cloudwatch_log_group.vpc_flow
	File: /modules/vpc/main.tf:119-123
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/logging-13
Check: CKV_AWS_338: "Ensure CloudWatch log groups retains logs for at least 1 year"
	PASSED for resource: module.vpc.aws_cloudwatch_log_group.vpc_flow
	File: /modules/vpc/main.tf:119-123
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-338
Check: CKV_AWS_158: "Ensure that CloudWatch Log Group is encrypted by KMS"
	PASSED for resource: module.vpc.aws_cloudwatch_log_group.vpc_flow
	File: /modules/vpc/main.tf:119-123
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-cloudwatch-log-group-is-encrypted-by-kms
Check: CKV_AWS_61: "Ensure AWS IAM policy does not allow assume role permission across all services"
	PASSED for resource: module.vpc.aws_iam_role.flow_logs
	File: /modules/vpc/main.tf:125-138
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-45
Check: CKV_AWS_60: "Ensure IAM role allows only specific services or principals to assume it"
	PASSED for resource: module.vpc.aws_iam_role.flow_logs
	File: /modules/vpc/main.tf:125-138
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-44
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.vpc.aws_iam_role.flow_logs
	File: /modules/vpc/main.tf:125-138
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_288: "Ensure IAM policies does not allow data exfiltration"
	PASSED for resource: module.vpc.aws_iam_role_policy.flow_logs
	File: /modules/vpc/main.tf:140-156
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-288
Check: CKV_AWS_289: "Ensure IAM policies does not allow permissions management / resource exposure without constraints"
	PASSED for resource: module.vpc.aws_iam_role_policy.flow_logs
	File: /modules/vpc/main.tf:140-156
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-289
Check: CKV_AWS_355: "Ensure no IAM policies documents allow "*" as a statement's resource for restrictable actions"
	PASSED for resource: module.vpc.aws_iam_role_policy.flow_logs
	File: /modules/vpc/main.tf:140-156
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-355
Check: CKV_AWS_286: "Ensure IAM policies does not allow privilege escalation"
	PASSED for resource: module.vpc.aws_iam_role_policy.flow_logs
	File: /modules/vpc/main.tf:140-156
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-286
Check: CKV_AWS_287: "Ensure IAM policies does not allow credentials exposure"
	PASSED for resource: module.vpc.aws_iam_role_policy.flow_logs
	File: /modules/vpc/main.tf:140-156
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-287
Check: CKV_AWS_290: "Ensure IAM policies does not allow write access without constraints"
	PASSED for resource: module.vpc.aws_iam_role_policy.flow_logs
	File: /modules/vpc/main.tf:140-156
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-290
Check: CKV_AWS_62: "Ensure IAM policies that allow full "*-*" administrative privileges are not created"
	PASSED for resource: module.vpc.aws_iam_role_policy.flow_logs
	File: /modules/vpc/main.tf:140-156
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-45
Check: CKV_AWS_63: "Ensure no IAM policies documents allow "*" as a statement's actions"
	PASSED for resource: module.vpc.aws_iam_role_policy.flow_logs
	File: /modules/vpc/main.tf:140-156
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/iam-48
Check: CKV_AWS_130: "Ensure VPC subnets do not assign public IP by default"
	PASSED for resource: module.vpc.aws_subnet.public[1]
	File: /modules/vpc/main.tf:32-43
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-vpc-subnets-do-not-assign-public-ip-by-default
Check: CKV_AWS_130: "Ensure VPC subnets do not assign public IP by default"
	PASSED for resource: module.vpc.aws_subnet.private[1]
	File: /modules/vpc/main.tf:45-55
	Calling File: /main.tf:39-43
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-vpc-subnets-do-not-assign-public-ip-by-default
Check: CKV2_AWS_11: "Ensure VPC flow logging is enabled in all VPCs"
	PASSED for resource: module.vpc.aws_vpc.main
	File: /modules/vpc/main.tf:10-18
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/logging-9-enable-vpc-flow-logging
Check: CKV_AWS_20: "S3 Bucket has an ACL defined which allows public READ access."
	PASSED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:8-18
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-1-acl-read-permissions-everyone
Check: CKV_AWS_20: "S3 Bucket has an ACL defined which allows public READ access."
	PASSED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:63-72
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-1-acl-read-permissions-everyone
Check: CKV2_AWS_44: "Ensure AWS route table with VPC peering does not contain routes overly permissive to all traffic"
	PASSED for resource: module.vpc.aws_route_table.public
	File: /modules/vpc/main.tf:76-87
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-aws-route-table-with-vpc-peering-does-not-contain-routes-overly-permissive-to-all-traffic
Check: CKV2_AWS_44: "Ensure AWS route table with VPC peering does not contain routes overly permissive to all traffic"
	PASSED for resource: module.vpc.aws_route_table.private
	File: /modules/vpc/main.tf:89-100
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-aws-route-table-with-vpc-peering-does-not-contain-routes-overly-permissive-to-all-traffic
Check: CKV2_AWS_35: "AWS NAT Gateways should be utilized for the default route"
	PASSED for resource: module.vpc.aws_route_table.public
	File: /modules/vpc/main.tf:76-87
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-aws-nat-gateways-are-utilized-for-the-default-route
Check: CKV2_AWS_35: "AWS NAT Gateways should be utilized for the default route"
	PASSED for resource: module.vpc.aws_route_table.private
	File: /modules/vpc/main.tf:89-100
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-aws-nat-gateways-are-utilized-for-the-default-route
Check: CKV_AWS_18: "Ensure the S3 bucket has access logging enabled"
	PASSED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:63-72
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-13-enable-logging
Check: CKV2_AWS_30: "Ensure Postgres RDS as aws_db_instance has Query Logging enabled"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-postgres-rds-has-query-logging-enabled
Check: CKV2_AWS_30: "Ensure Postgres RDS as aws_db_instance has Query Logging enabled"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-postgres-rds-has-query-logging-enabled
Check: CKV2_AWS_61: "Ensure that an S3 bucket has a lifecycle configuration"
	PASSED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:8-18
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-2-61
Check: CKV2_AWS_61: "Ensure that an S3 bucket has a lifecycle configuration"
	PASSED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:63-72
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-2-61
Check: CKV_AWS_19: "Ensure all data stored in the S3 bucket is securely encrypted at rest"
	PASSED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:8-18
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-14-data-encrypted-at-rest
Check: CKV_AWS_19: "Ensure all data stored in the S3 bucket is securely encrypted at rest"
	PASSED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:63-72
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-14-data-encrypted-at-rest
Check: CKV_AWS_21: "Ensure all data stored in the S3 bucket have versioning enabled"
	PASSED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:8-18
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-16-enable-versioning
Check: CKV_AWS_21: "Ensure all data stored in the S3 bucket have versioning enabled"
	PASSED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:63-72
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-16-enable-versioning
Check: CKV2_AWS_6: "Ensure that S3 bucket has a Public Access block"
	PASSED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:8-18
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/s3-bucket-should-have-public-access-blocks-defaults-to-false-if-the-public-access-block-is-not-attached
Check: CKV2_AWS_6: "Ensure that S3 bucket has a Public Access block"
	PASSED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:63-72
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/s3-bucket-should-have-public-access-blocks-defaults-to-false-if-the-public-access-block-is-not-attached
Check: CKV2_AWS_19: "Ensure that all EIP addresses allocated to a VPC are attached to EC2 instances"
	PASSED for resource: module.vpc.aws_eip.nat
	File: /modules/vpc/main.tf:57-63
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-that-all-eip-addresses-allocated-to-a-vpc-are-attached-to-ec2-instances
Check: CKV_AWS_57: "S3 Bucket has an ACL defined which allows public WRITE access."
	PASSED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:8-18
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-2-acl-write-permissions-everyone
Check: CKV_AWS_57: "S3 Bucket has an ACL defined which allows public WRITE access."
	PASSED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:63-72
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-2-acl-write-permissions-everyone
Check: CKV2_AWS_5: "Ensure that Security Groups are attached to another resource"
	PASSED for resource: module.rds.aws_security_group.db
	File: /modules/rds/main.tf:16-28
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-that-security-groups-are-attached-to-ec2-instances-or-elastic-network-interfaces-enis
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.eks.aws_iam_role.cluster
	File: /modules/eks/main.tf:6-19
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.eks.aws_iam_role_policy_attachment.cluster_policy
	File: /modules/eks/main.tf:21-24
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.eks.aws_iam_role.node_group
	File: /modules/eks/main.tf:61-74
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.eks.aws_iam_role_policy_attachment.node_worker
	File: /modules/eks/main.tf:76-79
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.eks.aws_iam_role_policy_attachment.node_cni
	File: /modules/eks/main.tf:81-84
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.eks.aws_iam_role_policy_attachment.node_ecr
	File: /modules/eks/main.tf:86-89
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.iam.aws_iam_role.eks_node
	File: /modules/iam/main.tf:3-16
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.iam.aws_iam_role_policy_attachment.worker_node
	File: /modules/iam/main.tf:18-21
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.iam.aws_iam_role_policy_attachment.cni
	File: /modules/iam/main.tf:23-26
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.iam.aws_iam_role_policy_attachment.ecr_readonly
	File: /modules/iam/main.tf:28-31
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.iam.aws_iam_role.app_role
	File: /modules/iam/main.tf:33-46
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.rds.aws_iam_role.rds_monitoring
	File: /modules/rds/main.tf:35-48
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.rds.aws_iam_role_policy_attachment.rds_monitoring
	File: /modules/rds/main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.vpc.aws_iam_role.flow_logs
	File: /modules/vpc/main.tf:125-138
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_12: "Ensure the default security group of every VPC restricts all traffic"
	PASSED for resource: module.vpc.aws_vpc.main
	File: /modules/vpc/main.tf:10-18
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/networking-4
Check: CKV2_AWS_40: "Ensure AWS IAM policy does not allow full IAM privileges"
	PASSED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:48-78
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-40
Check: CKV2_AWS_40: "Ensure AWS IAM policy does not allow full IAM privileges"
	PASSED for resource: module.vpc.aws_iam_role_policy.flow_logs
	File: /modules/vpc/main.tf:140-156
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-40
Check: CKV2_AWS_60: "Ensure RDS instance with copy tags to snapshots is enabled"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-2-60
Check: CKV2_AWS_60: "Ensure RDS instance with copy tags to snapshots is enabled"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-2-60
Check: CKV_AWS_145: "Ensure that S3 buckets are encrypted with KMS by default"
	PASSED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:8-18
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-s3-buckets-are-encrypted-with-kms-by-default
Check: CKV_AWS_145: "Ensure that S3 buckets are encrypted with KMS by default"
	PASSED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:63-72
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-s3-buckets-are-encrypted-with-kms-by-default
Check: CKV_AWS_300: "Ensure S3 lifecycle configuration sets period for aborting failed uploads"
	FAILED for resource: module.s3.aws_s3_bucket_lifecycle_configuration.audit_logs
	File: /modules/s3/main.tf:48-61
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-300

		48 | resource "aws_s3_bucket_lifecycle_configuration" "audit_logs" {
		49 |   bucket = aws_s3_bucket.audit_logs.id
		50 | 
		51 |   rule {
		52 |     id     = "expire-old-audit-logs"
		53 |     status = "Enabled"
		54 | 
		55 |     filter {}
		56 | 
		57 |     noncurrent_version_expiration {
		58 |       noncurrent_days = 90
		59 |     }
		60 |   }
		61 | }

Check: CKV_AWS_300: "Ensure S3 lifecycle configuration sets period for aborting failed uploads"
	FAILED for resource: module.s3.aws_s3_bucket_lifecycle_configuration.artifacts
	File: /modules/s3/main.tf:109-122
	Calling File: /main.tf:50-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-300

		109 | resource "aws_s3_bucket_lifecycle_configuration" "artifacts" {
		110 |   bucket = aws_s3_bucket.artifacts.id
		111 | 
		112 |   rule {
		113 |     id     = "expire-old-artifacts"
		114 |     status = "Enabled"
		115 | 
		116 |     filter {}
		117 | 
		118 |     noncurrent_version_expiration {
		119 |       noncurrent_days = 30
		120 |     }
		121 |   }
		122 | }

Check: CKV2_AWS_64: "Ensure KMS key Policy is defined"
	FAILED for resource: module.eks.aws_kms_key.eks
	File: /modules/eks/main.tf:26-29
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-64

		26 | resource "aws_kms_key" "eks" {
		27 |   description         = "KMS key for EKS secrets encryption"
		28 |   enable_key_rotation = true
		29 | }

Check: CKV2_AWS_64: "Ensure KMS key Policy is defined"
	FAILED for resource: module.rds.aws_kms_key.rds
	File: /modules/rds/main.tf:30-33
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-64

		30 | resource "aws_kms_key" "rds" {
		31 |   description         = "KMS key for SecureFlow RDS encryption"
		32 |   enable_key_rotation = true
		33 | }

Check: CKV2_AWS_64: "Ensure KMS key Policy is defined"
	FAILED for resource: module.s3.aws_kms_key.s3
	File: /modules/s3/main.tf:3-6
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-64

		3 | resource "aws_kms_key" "s3" {
		4 |   description         = "KMS key for SecureFlow S3 buckets"
		5 |   enable_key_rotation = true
		6 | }

Check: CKV2_AWS_64: "Ensure KMS key Policy is defined"
	FAILED for resource: module.vpc.aws_kms_key.flow_logs
	File: /modules/vpc/main.tf:114-117
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-64

		114 | resource "aws_kms_key" "flow_logs" {
		115 |   description         = "KMS key for VPC flow logs"
		116 |   enable_key_rotation = true
		117 | }

Check: CKV2_AWS_69: "Ensure AWS RDS database instance configured with encryption in transit"
	FAILED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:70-98
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/bc-aws-2-69

		70 | resource "aws_db_instance" "auth" {
		71 |   identifier                          = "${var.project}-${var.environment}-authdb"
		72 |   engine                              = "postgres"
		73 |   engine_version                      = "14"
		74 |   instance_class                      = "db.t3.micro"
		75 |   allocated_storage                   = 20
		76 |   db_name                             = "authdb"
		77 |   username                            = "authuser"
		78 |   password                            = var.db_password
		79 |   db_subnet_group_name                = aws_db_subnet_group.main.name
		80 |   vpc_security_group_ids              = [aws_security_group.db.id]
		81 |   publicly_accessible                 = false
		82 |   storage_encrypted                   = true
		83 |   kms_key_id                          = aws_kms_key.rds.arn
		84 |   backup_retention_period             = 7
		85 |   skip_final_snapshot                 = false
		86 |   final_snapshot_identifier           = "${var.project}-${var.environment}-authdb-final"
		87 |   deletion_protection                 = true
		88 |   performance_insights_enabled        = true
		89 |   performance_insights_kms_key_id     = aws_kms_key.rds.arn
		90 |   enabled_cloudwatch_logs_exports     = ["postgresql", "upgrade"]
		91 |   iam_database_authentication_enabled = true
		92 |   auto_minor_version_upgrade          = true
		93 |   multi_az                            = true
		94 |   copy_tags_to_snapshot               = true
		95 |   monitoring_interval                 = 60
		96 |   monitoring_role_arn                 = aws_iam_role.rds_monitoring.arn
		97 |   parameter_group_name                = aws_db_parameter_group.postgres.name
		98 | }

Check: CKV2_AWS_69: "Ensure AWS RDS database instance configured with encryption in transit"
	FAILED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:100-128
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/bc-aws-2-69

		100 | resource "aws_db_instance" "transactions" {
		101 |   identifier                          = "${var.project}-${var.environment}-txdb"
		102 |   engine                              = "postgres"
		103 |   engine_version                      = "14"
		104 |   instance_class                      = "db.t3.micro"
		105 |   allocated_storage                   = 20
		106 |   db_name                             = "transactiondb"
		107 |   username                            = "txuser"
		108 |   password                            = var.db_password
		109 |   db_subnet_group_name                = aws_db_subnet_group.main.name
		110 |   vpc_security_group_ids              = [aws_security_group.db.id]
		111 |   publicly_accessible                 = false
		112 |   storage_encrypted                   = true
		113 |   kms_key_id                          = aws_kms_key.rds.arn
		114 |   backup_retention_period             = 7
		115 |   skip_final_snapshot                 = false
		116 |   final_snapshot_identifier           = "${var.project}-${var.environment}-txdb-final"
		117 |   deletion_protection                 = true
		118 |   performance_insights_enabled        = true
		119 |   performance_insights_kms_key_id     = aws_kms_key.rds.arn
		120 |   enabled_cloudwatch_logs_exports     = ["postgresql", "upgrade"]
		121 |   iam_database_authentication_enabled = true
		122 |   auto_minor_version_upgrade          = true
		123 |   multi_az                            = true
		124 |   copy_tags_to_snapshot               = true
		125 |   monitoring_interval                 = 60
		126 |   monitoring_role_arn                 = aws_iam_role.rds_monitoring.arn
		127 |   parameter_group_name                = aws_db_parameter_group.postgres.name
		128 | }
Check: CKV_AWS_18: "Ensure the S3 bucket has access logging enabled"
	SKIPPED for resource: module.s3.aws_s3_bucket.audit_logs
	Suppress comment: This bucket is the access-log destination; enabling logging on it would create recursive logging.
	File: /modules/s3/main.tf:8-18
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-13-enable-logging
Check: CKV_AWS_144: "Ensure that S3 bucket has cross-region replication enabled"
	SKIPPED for resource: module.s3.aws_s3_bucket.audit_logs
	Suppress comment: Cross-region replication is out of scope for this DevSecOps lab.
	File: /modules/s3/main.tf:8-18
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-s3-bucket-has-cross-region-replication-enabled
Check: CKV_AWS_144: "Ensure that S3 bucket has cross-region replication enabled"
	SKIPPED for resource: module.s3.aws_s3_bucket.artifacts
	Suppress comment: Cross-region replication is out of scope for this DevSecOps lab.
	File: /modules/s3/main.tf:63-72
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-s3-bucket-has-cross-region-replication-enabled
Check: CKV2_AWS_62: "Ensure S3 buckets should have event notifications enabled"
	SKIPPED for resource: module.s3.aws_s3_bucket.audit_logs
	Suppress comment: Event notifications are not required for this prototype bucket.
	File: /modules/s3/main.tf:8-18
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-2-62
Check: CKV2_AWS_62: "Ensure S3 buckets should have event notifications enabled"
	SKIPPED for resource: module.s3.aws_s3_bucket.artifacts
	Suppress comment: Event notifications are not required for this prototype bucket.
	File: /modules/s3/main.tf:63-72
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-2-62

