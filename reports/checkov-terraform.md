

       _               _
   ___| |__   ___  ___| | _______   __
  / __| '_ \ / _ \/ __| |/ / _ \ \ / /
 | (__| | | |  __/ (__|   < (_) \ V /
  \___|_| |_|\___|\___|_|\_\___/ \_/

By Prisma Cloud | version: 3.2.521 
Update available 3.2.521 -> 3.2.526
Run pip3 install -U checkov to update 


terraform scan results:

Passed checks: 48, Failed checks: 72, Skipped checks: 0

Check: CKV_AWS_41: "Ensure no hard coded AWS access key and secret key exists in provider"
	PASSED for resource: aws.default
	File: /main.tf:17-19
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/secrets-policies/bc-aws-secrets-5
Check: CKV_AWS_61: "Ensure AWS IAM policy does not allow assume role permission across all services"
	PASSED for resource: module.eks.aws_iam_role.cluster
	File: /modules/eks/main.tf:11-24
	Calling File: /main.tf:52-58
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-45
Check: CKV_AWS_60: "Ensure IAM role allows only specific services or principals to assume it"
	PASSED for resource: module.eks.aws_iam_role.cluster
	File: /modules/eks/main.tf:11-24
	Calling File: /main.tf:52-58
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-44
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.eks.aws_iam_role.cluster
	File: /modules/eks/main.tf:11-24
	Calling File: /main.tf:52-58
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.eks.aws_iam_role_policy_attachment.cluster_policy
	File: /modules/eks/main.tf:26-29
	Calling File: /main.tf:52-58
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_61: "Ensure AWS IAM policy does not allow assume role permission across all services"
	PASSED for resource: module.eks.aws_iam_role.node_group
	File: /modules/eks/main.tf:49-62
	Calling File: /main.tf:52-58
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-45
Check: CKV_AWS_60: "Ensure IAM role allows only specific services or principals to assume it"
	PASSED for resource: module.eks.aws_iam_role.node_group
	File: /modules/eks/main.tf:49-62
	Calling File: /main.tf:52-58
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-44
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.eks.aws_iam_role.node_group
	File: /modules/eks/main.tf:49-62
	Calling File: /main.tf:52-58
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_100: "Ensure AWS EKS node group does not have implicit SSH access from 0.0.0.0/0"
	PASSED for resource: module.eks.aws_eks_node_group.main
	File: /modules/eks/main.tf:70-83
	Calling File: /main.tf:52-58
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-kubernetes-policies/bc-aws-kubernetes-5
Check: CKV_AWS_61: "Ensure AWS IAM policy does not allow assume role permission across all services"
	PASSED for resource: module.iam.aws_iam_role.eks_node
	File: /modules/iam/main.tf:8-21
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-45
Check: CKV_AWS_60: "Ensure IAM role allows only specific services or principals to assume it"
	PASSED for resource: module.iam.aws_iam_role.eks_node
	File: /modules/iam/main.tf:8-21
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-44
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.iam.aws_iam_role.eks_node
	File: /modules/iam/main.tf:8-21
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_61: "Ensure AWS IAM policy does not allow assume role permission across all services"
	PASSED for resource: module.iam.aws_iam_role.app_role
	File: /modules/iam/main.tf:29-42
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-45
Check: CKV_AWS_60: "Ensure IAM role allows only specific services or principals to assume it"
	PASSED for resource: module.iam.aws_iam_role.app_role
	File: /modules/iam/main.tf:29-42
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-44
Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	PASSED for resource: module.iam.aws_iam_role.app_role
	File: /modules/iam/main.tf:29-42
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274
Check: CKV_AWS_277: "Ensure no security groups allow ingress from 0.0.0.0:0 to port -1"
	PASSED for resource: module.rds.aws_security_group.db
	File: /modules/rds/main.tf:16-33
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-aws-security-group-does-not-allow-all-traffic-on-all-ports
Check: CKV_AWS_24: "Ensure no security groups allow ingress from 0.0.0.0:0 to port 22"
	PASSED for resource: module.rds.aws_security_group.db
	File: /modules/rds/main.tf:16-33
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/networking-1-port-security
Check: CKV_AWS_260: "Ensure no security groups allow ingress from 0.0.0.0:0 to port 80"
	PASSED for resource: module.rds.aws_security_group.db
	File: /modules/rds/main.tf:16-33
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-aws-security-groups-do-not-allow-ingress-from-00000-to-port-80
Check: CKV_AWS_25: "Ensure no security groups allow ingress from 0.0.0.0:0 to port 3389"
	PASSED for resource: module.rds.aws_security_group.db
	File: /modules/rds/main.tf:16-33
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/networking-2
Check: CKV_AWS_133: "Ensure that RDS instances has backup policy"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-rds-instances-have-backup-policy
Check: CKV_AWS_354: "Ensure RDS Performance Insights are encrypted using KMS CMKs"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-354
Check: CKV_AWS_211: "Ensure RDS uses a modern CaCert"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-aws-rds-uses-a-modern-cacert
Check: CKV_AWS_388: "Ensure AWS Aurora PostgreSQL is not exposed to local file read vulnerability"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Calling File: /main.tf:60-67
Check: CKV_AWS_133: "Ensure that RDS instances has backup policy"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-rds-instances-have-backup-policy
Check: CKV_AWS_354: "Ensure RDS Performance Insights are encrypted using KMS CMKs"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-354
Check: CKV_AWS_211: "Ensure RDS uses a modern CaCert"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-aws-rds-uses-a-modern-cacert
Check: CKV_AWS_388: "Ensure AWS Aurora PostgreSQL is not exposed to local file read vulnerability"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Calling File: /main.tf:60-67
Check: CKV_AWS_93: "Ensure S3 bucket policy does not lockout all but root user. (Prevent lockouts needing root account fixes)"
	PASSED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:7-13
	Calling File: /main.tf:47-50
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-24
Check: CKV_AWS_93: "Ensure S3 bucket policy does not lockout all but root user. (Prevent lockouts needing root account fixes)"
	PASSED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:29-31
	Calling File: /main.tf:47-50
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-24
Check: CKV_AWS_277: "Ensure no security groups allow ingress from 0.0.0.0:0 to port -1"
	PASSED for resource: module.vpc.aws_security_group.wide_open
	File: /modules/vpc/main.tf:51-69
	Calling File: /main.tf:36-40
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-aws-security-group-does-not-allow-all-traffic-on-all-ports
Check: CKV_AWS_20: "S3 Bucket has an ACL defined which allows public READ access."
	PASSED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:7-13
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-1-acl-read-permissions-everyone
Check: CKV_AWS_20: "S3 Bucket has an ACL defined which allows public READ access."
	PASSED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:29-31
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-1-acl-read-permissions-everyone
Check: CKV2_AWS_44: "Ensure AWS route table with VPC peering does not contain routes overly permissive to all traffic"
	PASSED for resource: module.vpc.aws_route_table.public
	File: /modules/vpc/main.tf:35-42
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-aws-route-table-with-vpc-peering-does-not-contain-routes-overly-permissive-to-all-traffic
Check: CKV2_AWS_35: "AWS NAT Gateways should be utilized for the default route"
	PASSED for resource: module.vpc.aws_route_table.public
	File: /modules/vpc/main.tf:35-42
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-aws-nat-gateways-are-utilized-for-the-default-route
Check: CKV_AWS_19: "Ensure all data stored in the S3 bucket is securely encrypted at rest"
	PASSED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:7-13
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-14-data-encrypted-at-rest
Check: CKV_AWS_19: "Ensure all data stored in the S3 bucket is securely encrypted at rest"
	PASSED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:29-31
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-14-data-encrypted-at-rest
Check: CKV2_AWS_69: "Ensure AWS RDS database instance configured with encryption in transit"
	PASSED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/bc-aws-2-69
Check: CKV2_AWS_69: "Ensure AWS RDS database instance configured with encryption in transit"
	PASSED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/bc-aws-2-69
Check: CKV2_AWS_5: "Ensure that Security Groups are attached to another resource"
	PASSED for resource: module.rds.aws_security_group.db
	File: /modules/rds/main.tf:16-33
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-that-security-groups-are-attached-to-ec2-instances-or-elastic-network-interfaces-enis
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.eks.aws_iam_role.cluster
	File: /modules/eks/main.tf:11-24
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.eks.aws_iam_role_policy_attachment.cluster_policy
	File: /modules/eks/main.tf:26-29
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.eks.aws_iam_role.node_group
	File: /modules/eks/main.tf:49-62
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.eks.aws_iam_role_policy_attachment.node_admin
	File: /modules/eks/main.tf:65-68
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.iam.aws_iam_role.eks_node
	File: /modules/iam/main.tf:8-21
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.iam.aws_iam_role_policy_attachment.admin_access
	File: /modules/iam/main.tf:23-26
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV2_AWS_56: "Ensure AWS Managed IAMFullAccess IAM policy is not used."
	PASSED for resource: module.iam.aws_iam_role.app_role
	File: /modules/iam/main.tf:29-42
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-56
Check: CKV_AWS_57: "S3 Bucket has an ACL defined which allows public WRITE access."
	PASSED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:7-13
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-2-acl-write-permissions-everyone
Check: CKV_AWS_57: "S3 Bucket has an ACL defined which allows public WRITE access."
	PASSED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:29-31
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-2-acl-write-permissions-everyone
Check: CKV_AWS_58: "Ensure EKS Cluster has Secrets Encryption Enabled"
	FAILED for resource: module.eks.aws_eks_cluster.main
	File: /modules/eks/main.tf:31-47
	Calling File: /main.tf:52-58
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-kubernetes-policies/bc-aws-kubernetes-3

		31 | resource "aws_eks_cluster" "main" {
		32 |   name     = "${var.project}-${var.environment}"
		33 |   role_arn = aws_iam_role.cluster.arn
		34 |   version  = "1.28"
		35 | 
		36 |   vpc_config {
		37 |     subnet_ids              = var.public_subnet_ids # IV-10
		38 |     endpoint_private_access = false                  # IV-10
		39 |     endpoint_public_access  = true                   # IV-10
		40 |     public_access_cidrs     = ["0.0.0.0/0"]          # IV-10
		41 |   }
		42 | 
		43 |   # Deliberately missing: encryption_config for secrets at rest.
		44 |   # Deliberately missing: enabled_cluster_log_types.
		45 | 
		46 |   depends_on = [aws_iam_role_policy_attachment.cluster_policy]
		47 | }

Check: CKV_AWS_39: "Ensure Amazon EKS public endpoint disabled"
	FAILED for resource: module.eks.aws_eks_cluster.main
	File: /modules/eks/main.tf:31-47
	Calling File: /main.tf:52-58
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-kubernetes-policies/bc-aws-kubernetes-2

		31 | resource "aws_eks_cluster" "main" {
		32 |   name     = "${var.project}-${var.environment}"
		33 |   role_arn = aws_iam_role.cluster.arn
		34 |   version  = "1.28"
		35 | 
		36 |   vpc_config {
		37 |     subnet_ids              = var.public_subnet_ids # IV-10
		38 |     endpoint_private_access = false                  # IV-10
		39 |     endpoint_public_access  = true                   # IV-10
		40 |     public_access_cidrs     = ["0.0.0.0/0"]          # IV-10
		41 |   }
		42 | 
		43 |   # Deliberately missing: encryption_config for secrets at rest.
		44 |   # Deliberately missing: enabled_cluster_log_types.
		45 | 
		46 |   depends_on = [aws_iam_role_policy_attachment.cluster_policy]
		47 | }

Check: CKV_AWS_339: "Ensure EKS clusters run on a supported Kubernetes version"
	FAILED for resource: module.eks.aws_eks_cluster.main
	File: /modules/eks/main.tf:31-47
	Calling File: /main.tf:52-58
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-kubernetes-policies/bc-aws-339

		31 | resource "aws_eks_cluster" "main" {
		32 |   name     = "${var.project}-${var.environment}"
		33 |   role_arn = aws_iam_role.cluster.arn
		34 |   version  = "1.28"
		35 | 
		36 |   vpc_config {
		37 |     subnet_ids              = var.public_subnet_ids # IV-10
		38 |     endpoint_private_access = false                  # IV-10
		39 |     endpoint_public_access  = true                   # IV-10
		40 |     public_access_cidrs     = ["0.0.0.0/0"]          # IV-10
		41 |   }
		42 | 
		43 |   # Deliberately missing: encryption_config for secrets at rest.
		44 |   # Deliberately missing: enabled_cluster_log_types.
		45 | 
		46 |   depends_on = [aws_iam_role_policy_attachment.cluster_policy]
		47 | }

Check: CKV_AWS_38: "Ensure Amazon EKS public endpoint not accessible to 0.0.0.0/0"
	FAILED for resource: module.eks.aws_eks_cluster.main
	File: /modules/eks/main.tf:31-47
	Calling File: /main.tf:52-58
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-kubernetes-policies/bc-aws-kubernetes-1

		31 | resource "aws_eks_cluster" "main" {
		32 |   name     = "${var.project}-${var.environment}"
		33 |   role_arn = aws_iam_role.cluster.arn
		34 |   version  = "1.28"
		35 | 
		36 |   vpc_config {
		37 |     subnet_ids              = var.public_subnet_ids # IV-10
		38 |     endpoint_private_access = false                  # IV-10
		39 |     endpoint_public_access  = true                   # IV-10
		40 |     public_access_cidrs     = ["0.0.0.0/0"]          # IV-10
		41 |   }
		42 | 
		43 |   # Deliberately missing: encryption_config for secrets at rest.
		44 |   # Deliberately missing: enabled_cluster_log_types.
		45 | 
		46 |   depends_on = [aws_iam_role_policy_attachment.cluster_policy]
		47 | }

Check: CKV_AWS_37: "Ensure Amazon EKS control plane logging is enabled for all log types"
	FAILED for resource: module.eks.aws_eks_cluster.main
	File: /modules/eks/main.tf:31-47
	Calling File: /main.tf:52-58
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-kubernetes-policies/bc-aws-kubernetes-4

		31 | resource "aws_eks_cluster" "main" {
		32 |   name     = "${var.project}-${var.environment}"
		33 |   role_arn = aws_iam_role.cluster.arn
		34 |   version  = "1.28"
		35 | 
		36 |   vpc_config {
		37 |     subnet_ids              = var.public_subnet_ids # IV-10
		38 |     endpoint_private_access = false                  # IV-10
		39 |     endpoint_public_access  = true                   # IV-10
		40 |     public_access_cidrs     = ["0.0.0.0/0"]          # IV-10
		41 |   }
		42 | 
		43 |   # Deliberately missing: encryption_config for secrets at rest.
		44 |   # Deliberately missing: enabled_cluster_log_types.
		45 | 
		46 |   depends_on = [aws_iam_role_policy_attachment.cluster_policy]
		47 | }

Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	FAILED for resource: module.eks.aws_iam_role_policy_attachment.node_admin
	File: /modules/eks/main.tf:65-68
	Calling File: /main.tf:52-58
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274

		65 | resource "aws_iam_role_policy_attachment" "node_admin" {
		66 |   role       = aws_iam_role.node_group.name
		67 |   policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
		68 | }

Check: CKV_AWS_274: "Disallow IAM roles, users, and groups from using the AWS AdministratorAccess policy"
	FAILED for resource: module.iam.aws_iam_role_policy_attachment.admin_access
	File: /modules/iam/main.tf:23-26
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-274

		23 | resource "aws_iam_role_policy_attachment" "admin_access" {
		24 |   role       = aws_iam_role.eks_node.name
		25 |   policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess" # IV-08
		26 | }

Check: CKV_AWS_288: "Ensure IAM policies does not allow data exfiltration"
	FAILED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:44-56
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-288

		44 | resource "aws_iam_role_policy" "app_inline" {
		45 |   name = "${var.project}-app-inline"
		46 |   role = aws_iam_role.app_role.id
		47 | 
		48 |   policy = jsonencode({
		49 |     Version = "2012-10-17"
		50 |     Statement = [{
		51 |       Effect   = "Allow"
		52 |       Action   = "*"     # IV-08 — wildcard action.
		53 |       Resource = "*"     # IV-08 — wildcard resource.
		54 |     }]
		55 |   })
		56 | }

Check: CKV_AWS_289: "Ensure IAM policies does not allow permissions management / resource exposure without constraints"
	FAILED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:44-56
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-289

		44 | resource "aws_iam_role_policy" "app_inline" {
		45 |   name = "${var.project}-app-inline"
		46 |   role = aws_iam_role.app_role.id
		47 | 
		48 |   policy = jsonencode({
		49 |     Version = "2012-10-17"
		50 |     Statement = [{
		51 |       Effect   = "Allow"
		52 |       Action   = "*"     # IV-08 — wildcard action.
		53 |       Resource = "*"     # IV-08 — wildcard resource.
		54 |     }]
		55 |   })
		56 | }

Check: CKV_AWS_355: "Ensure no IAM policies documents allow "*" as a statement's resource for restrictable actions"
	FAILED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:44-56
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-355

		44 | resource "aws_iam_role_policy" "app_inline" {
		45 |   name = "${var.project}-app-inline"
		46 |   role = aws_iam_role.app_role.id
		47 | 
		48 |   policy = jsonencode({
		49 |     Version = "2012-10-17"
		50 |     Statement = [{
		51 |       Effect   = "Allow"
		52 |       Action   = "*"     # IV-08 — wildcard action.
		53 |       Resource = "*"     # IV-08 — wildcard resource.
		54 |     }]
		55 |   })
		56 | }

Check: CKV_AWS_286: "Ensure IAM policies does not allow privilege escalation"
	FAILED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:44-56
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-286

		44 | resource "aws_iam_role_policy" "app_inline" {
		45 |   name = "${var.project}-app-inline"
		46 |   role = aws_iam_role.app_role.id
		47 | 
		48 |   policy = jsonencode({
		49 |     Version = "2012-10-17"
		50 |     Statement = [{
		51 |       Effect   = "Allow"
		52 |       Action   = "*"     # IV-08 — wildcard action.
		53 |       Resource = "*"     # IV-08 — wildcard resource.
		54 |     }]
		55 |   })
		56 | }

Check: CKV_AWS_287: "Ensure IAM policies does not allow credentials exposure"
	FAILED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:44-56
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-287

		44 | resource "aws_iam_role_policy" "app_inline" {
		45 |   name = "${var.project}-app-inline"
		46 |   role = aws_iam_role.app_role.id
		47 | 
		48 |   policy = jsonencode({
		49 |     Version = "2012-10-17"
		50 |     Statement = [{
		51 |       Effect   = "Allow"
		52 |       Action   = "*"     # IV-08 — wildcard action.
		53 |       Resource = "*"     # IV-08 — wildcard resource.
		54 |     }]
		55 |   })
		56 | }

Check: CKV_AWS_290: "Ensure IAM policies does not allow write access without constraints"
	FAILED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:44-56
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-290

		44 | resource "aws_iam_role_policy" "app_inline" {
		45 |   name = "${var.project}-app-inline"
		46 |   role = aws_iam_role.app_role.id
		47 | 
		48 |   policy = jsonencode({
		49 |     Version = "2012-10-17"
		50 |     Statement = [{
		51 |       Effect   = "Allow"
		52 |       Action   = "*"     # IV-08 — wildcard action.
		53 |       Resource = "*"     # IV-08 — wildcard resource.
		54 |     }]
		55 |   })
		56 | }

Check: CKV_AWS_62: "Ensure IAM policies that allow full "*-*" administrative privileges are not created"
	FAILED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:44-56
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-iam-45

		44 | resource "aws_iam_role_policy" "app_inline" {
		45 |   name = "${var.project}-app-inline"
		46 |   role = aws_iam_role.app_role.id
		47 | 
		48 |   policy = jsonencode({
		49 |     Version = "2012-10-17"
		50 |     Statement = [{
		51 |       Effect   = "Allow"
		52 |       Action   = "*"     # IV-08 — wildcard action.
		53 |       Resource = "*"     # IV-08 — wildcard resource.
		54 |     }]
		55 |   })
		56 | }

Check: CKV_AWS_63: "Ensure no IAM policies documents allow "*" as a statement's actions"
	FAILED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:44-56
	Calling File: /main.tf:42-45
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/iam-48

		44 | resource "aws_iam_role_policy" "app_inline" {
		45 |   name = "${var.project}-app-inline"
		46 |   role = aws_iam_role.app_role.id
		47 | 
		48 |   policy = jsonencode({
		49 |     Version = "2012-10-17"
		50 |     Statement = [{
		51 |       Effect   = "Allow"
		52 |       Action   = "*"     # IV-08 — wildcard action.
		53 |       Resource = "*"     # IV-08 — wildcard resource.
		54 |     }]
		55 |   })
		56 | }

Check: CKV_AWS_23: "Ensure every security group and rule has a description"
	FAILED for resource: module.rds.aws_security_group.db
	File: /modules/rds/main.tf:16-33
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/networking-31

		16 | resource "aws_security_group" "db" {
		17 |   name   = "${var.project}-${var.environment}-db-sg"
		18 |   vpc_id = var.vpc_id
		19 | 
		20 |   ingress {
		21 |     from_port   = 5432
		22 |     to_port     = 5432
		23 |     protocol    = "tcp"
		24 |     cidr_blocks = ["0.0.0.0/0"] # IV-02 at cloud scale — DB reachable from internet.
		25 |   }
		26 | 
		27 |   egress {
		28 |     from_port   = 0
		29 |     to_port     = 0
		30 |     protocol    = "-1"
		31 |     cidr_blocks = ["0.0.0.0/0"]
		32 |   }
		33 | }

Check: CKV_AWS_382: "Ensure no security groups allow egress from 0.0.0.0:0 to port -1"
	FAILED for resource: module.rds.aws_security_group.db
	File: /modules/rds/main.tf:16-33
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/bc-aws-382

		16 | resource "aws_security_group" "db" {
		17 |   name   = "${var.project}-${var.environment}-db-sg"
		18 |   vpc_id = var.vpc_id
		19 | 
		20 |   ingress {
		21 |     from_port   = 5432
		22 |     to_port     = 5432
		23 |     protocol    = "tcp"
		24 |     cidr_blocks = ["0.0.0.0/0"] # IV-02 at cloud scale — DB reachable from internet.
		25 |   }
		26 | 
		27 |   egress {
		28 |     from_port   = 0
		29 |     to_port     = 0
		30 |     protocol    = "-1"
		31 |     cidr_blocks = ["0.0.0.0/0"]
		32 |   }
		33 | }

Check: CKV_AWS_161: "Ensure RDS database has IAM authentication enabled"
	FAILED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/ensure-rds-database-has-iam-authentication-enabled

		35 | resource "aws_db_instance" "auth" {
		36 |   identifier             = "${var.project}-${var.environment}-authdb"
		37 |   engine                 = "postgres"
		38 |   engine_version         = "14"
		39 |   instance_class         = "db.t3.micro"
		40 |   allocated_storage      = 20
		41 |   db_name                = "authdb"
		42 |   username               = "authuser"
		43 |   password               = var.db_password # IV-01 via Terraform variable.
		44 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		45 |   vpc_security_group_ids = [aws_security_group.db.id]
		46 |   publicly_accessible    = true  # Checkov CKV_AWS_17.
		47 |   storage_encrypted      = false # Checkov CKV_AWS_16.
		48 |   skip_final_snapshot    = true  # Checkov CKV_AWS_118.
		49 |   deletion_protection    = false
		50 | 
		51 |   # Deliberately missing: backup_retention_period, performance_insights_enabled,
		52 |   # enabled_cloudwatch_logs_exports, iam_database_authentication_enabled.
		53 | }

Check: CKV_AWS_16: "Ensure all data stored in the RDS is securely encrypted at rest"
	FAILED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/general-4

		35 | resource "aws_db_instance" "auth" {
		36 |   identifier             = "${var.project}-${var.environment}-authdb"
		37 |   engine                 = "postgres"
		38 |   engine_version         = "14"
		39 |   instance_class         = "db.t3.micro"
		40 |   allocated_storage      = 20
		41 |   db_name                = "authdb"
		42 |   username               = "authuser"
		43 |   password               = var.db_password # IV-01 via Terraform variable.
		44 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		45 |   vpc_security_group_ids = [aws_security_group.db.id]
		46 |   publicly_accessible    = true  # Checkov CKV_AWS_17.
		47 |   storage_encrypted      = false # Checkov CKV_AWS_16.
		48 |   skip_final_snapshot    = true  # Checkov CKV_AWS_118.
		49 |   deletion_protection    = false
		50 | 
		51 |   # Deliberately missing: backup_retention_period, performance_insights_enabled,
		52 |   # enabled_cloudwatch_logs_exports, iam_database_authentication_enabled.
		53 | }

Check: CKV_AWS_353: "Ensure that RDS instances have performance insights enabled"
	FAILED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-353

		35 | resource "aws_db_instance" "auth" {
		36 |   identifier             = "${var.project}-${var.environment}-authdb"
		37 |   engine                 = "postgres"
		38 |   engine_version         = "14"
		39 |   instance_class         = "db.t3.micro"
		40 |   allocated_storage      = 20
		41 |   db_name                = "authdb"
		42 |   username               = "authuser"
		43 |   password               = var.db_password # IV-01 via Terraform variable.
		44 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		45 |   vpc_security_group_ids = [aws_security_group.db.id]
		46 |   publicly_accessible    = true  # Checkov CKV_AWS_17.
		47 |   storage_encrypted      = false # Checkov CKV_AWS_16.
		48 |   skip_final_snapshot    = true  # Checkov CKV_AWS_118.
		49 |   deletion_protection    = false
		50 | 
		51 |   # Deliberately missing: backup_retention_period, performance_insights_enabled,
		52 |   # enabled_cloudwatch_logs_exports, iam_database_authentication_enabled.
		53 | }

Check: CKV_AWS_293: "Ensure that AWS database instances have deletion protection enabled"
	FAILED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-293

		35 | resource "aws_db_instance" "auth" {
		36 |   identifier             = "${var.project}-${var.environment}-authdb"
		37 |   engine                 = "postgres"
		38 |   engine_version         = "14"
		39 |   instance_class         = "db.t3.micro"
		40 |   allocated_storage      = 20
		41 |   db_name                = "authdb"
		42 |   username               = "authuser"
		43 |   password               = var.db_password # IV-01 via Terraform variable.
		44 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		45 |   vpc_security_group_ids = [aws_security_group.db.id]
		46 |   publicly_accessible    = true  # Checkov CKV_AWS_17.
		47 |   storage_encrypted      = false # Checkov CKV_AWS_16.
		48 |   skip_final_snapshot    = true  # Checkov CKV_AWS_118.
		49 |   deletion_protection    = false
		50 | 
		51 |   # Deliberately missing: backup_retention_period, performance_insights_enabled,
		52 |   # enabled_cloudwatch_logs_exports, iam_database_authentication_enabled.
		53 | }

Check: CKV_AWS_129: "Ensure that respective logs of Amazon Relational Database Service (Amazon RDS) are enabled"
	FAILED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/ensure-that-respective-logs-of-amazon-relational-database-service-amazon-rds-are-enabled

		35 | resource "aws_db_instance" "auth" {
		36 |   identifier             = "${var.project}-${var.environment}-authdb"
		37 |   engine                 = "postgres"
		38 |   engine_version         = "14"
		39 |   instance_class         = "db.t3.micro"
		40 |   allocated_storage      = 20
		41 |   db_name                = "authdb"
		42 |   username               = "authuser"
		43 |   password               = var.db_password # IV-01 via Terraform variable.
		44 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		45 |   vpc_security_group_ids = [aws_security_group.db.id]
		46 |   publicly_accessible    = true  # Checkov CKV_AWS_17.
		47 |   storage_encrypted      = false # Checkov CKV_AWS_16.
		48 |   skip_final_snapshot    = true  # Checkov CKV_AWS_118.
		49 |   deletion_protection    = false
		50 | 
		51 |   # Deliberately missing: backup_retention_period, performance_insights_enabled,
		52 |   # enabled_cloudwatch_logs_exports, iam_database_authentication_enabled.
		53 | }

Check: CKV_AWS_157: "Ensure that RDS instances have Multi-AZ enabled"
	FAILED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/general-73

		35 | resource "aws_db_instance" "auth" {
		36 |   identifier             = "${var.project}-${var.environment}-authdb"
		37 |   engine                 = "postgres"
		38 |   engine_version         = "14"
		39 |   instance_class         = "db.t3.micro"
		40 |   allocated_storage      = 20
		41 |   db_name                = "authdb"
		42 |   username               = "authuser"
		43 |   password               = var.db_password # IV-01 via Terraform variable.
		44 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		45 |   vpc_security_group_ids = [aws_security_group.db.id]
		46 |   publicly_accessible    = true  # Checkov CKV_AWS_17.
		47 |   storage_encrypted      = false # Checkov CKV_AWS_16.
		48 |   skip_final_snapshot    = true  # Checkov CKV_AWS_118.
		49 |   deletion_protection    = false
		50 | 
		51 |   # Deliberately missing: backup_retention_period, performance_insights_enabled,
		52 |   # enabled_cloudwatch_logs_exports, iam_database_authentication_enabled.
		53 | }

Check: CKV_AWS_17: "Ensure all data stored in RDS is not publicly accessible"
	FAILED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/public-policies/public-2

		35 | resource "aws_db_instance" "auth" {
		36 |   identifier             = "${var.project}-${var.environment}-authdb"
		37 |   engine                 = "postgres"
		38 |   engine_version         = "14"
		39 |   instance_class         = "db.t3.micro"
		40 |   allocated_storage      = 20
		41 |   db_name                = "authdb"
		42 |   username               = "authuser"
		43 |   password               = var.db_password # IV-01 via Terraform variable.
		44 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		45 |   vpc_security_group_ids = [aws_security_group.db.id]
		46 |   publicly_accessible    = true  # Checkov CKV_AWS_17.
		47 |   storage_encrypted      = false # Checkov CKV_AWS_16.
		48 |   skip_final_snapshot    = true  # Checkov CKV_AWS_118.
		49 |   deletion_protection    = false
		50 | 
		51 |   # Deliberately missing: backup_retention_period, performance_insights_enabled,
		52 |   # enabled_cloudwatch_logs_exports, iam_database_authentication_enabled.
		53 | }

Check: CKV_AWS_226: "Ensure DB instance gets all minor upgrades automatically"
	FAILED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-aws-db-instance-gets-all-minor-upgrades-automatically

		35 | resource "aws_db_instance" "auth" {
		36 |   identifier             = "${var.project}-${var.environment}-authdb"
		37 |   engine                 = "postgres"
		38 |   engine_version         = "14"
		39 |   instance_class         = "db.t3.micro"
		40 |   allocated_storage      = 20
		41 |   db_name                = "authdb"
		42 |   username               = "authuser"
		43 |   password               = var.db_password # IV-01 via Terraform variable.
		44 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		45 |   vpc_security_group_ids = [aws_security_group.db.id]
		46 |   publicly_accessible    = true  # Checkov CKV_AWS_17.
		47 |   storage_encrypted      = false # Checkov CKV_AWS_16.
		48 |   skip_final_snapshot    = true  # Checkov CKV_AWS_118.
		49 |   deletion_protection    = false
		50 | 
		51 |   # Deliberately missing: backup_retention_period, performance_insights_enabled,
		52 |   # enabled_cloudwatch_logs_exports, iam_database_authentication_enabled.
		53 | }

Check: CKV_AWS_118: "Ensure that enhanced monitoring is enabled for Amazon RDS instances"
	FAILED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/ensure-that-enhanced-monitoring-is-enabled-for-amazon-rds-instances

		35 | resource "aws_db_instance" "auth" {
		36 |   identifier             = "${var.project}-${var.environment}-authdb"
		37 |   engine                 = "postgres"
		38 |   engine_version         = "14"
		39 |   instance_class         = "db.t3.micro"
		40 |   allocated_storage      = 20
		41 |   db_name                = "authdb"
		42 |   username               = "authuser"
		43 |   password               = var.db_password # IV-01 via Terraform variable.
		44 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		45 |   vpc_security_group_ids = [aws_security_group.db.id]
		46 |   publicly_accessible    = true  # Checkov CKV_AWS_17.
		47 |   storage_encrypted      = false # Checkov CKV_AWS_16.
		48 |   skip_final_snapshot    = true  # Checkov CKV_AWS_118.
		49 |   deletion_protection    = false
		50 | 
		51 |   # Deliberately missing: backup_retention_period, performance_insights_enabled,
		52 |   # enabled_cloudwatch_logs_exports, iam_database_authentication_enabled.
		53 | }

Check: CKV_AWS_161: "Ensure RDS database has IAM authentication enabled"
	FAILED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/ensure-rds-database-has-iam-authentication-enabled

		55 | resource "aws_db_instance" "transactions" {
		56 |   identifier             = "${var.project}-${var.environment}-txdb"
		57 |   engine                 = "postgres"
		58 |   engine_version         = "14"
		59 |   instance_class         = "db.t3.micro"
		60 |   allocated_storage      = 20
		61 |   db_name                = "transactiondb"
		62 |   username               = "txuser"
		63 |   password               = var.db_password
		64 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		65 |   vpc_security_group_ids = [aws_security_group.db.id]
		66 |   publicly_accessible    = true
		67 |   storage_encrypted      = false
		68 |   skip_final_snapshot    = true
		69 |   deletion_protection    = false
		70 | }

Check: CKV_AWS_16: "Ensure all data stored in the RDS is securely encrypted at rest"
	FAILED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/general-4

		55 | resource "aws_db_instance" "transactions" {
		56 |   identifier             = "${var.project}-${var.environment}-txdb"
		57 |   engine                 = "postgres"
		58 |   engine_version         = "14"
		59 |   instance_class         = "db.t3.micro"
		60 |   allocated_storage      = 20
		61 |   db_name                = "transactiondb"
		62 |   username               = "txuser"
		63 |   password               = var.db_password
		64 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		65 |   vpc_security_group_ids = [aws_security_group.db.id]
		66 |   publicly_accessible    = true
		67 |   storage_encrypted      = false
		68 |   skip_final_snapshot    = true
		69 |   deletion_protection    = false
		70 | }

Check: CKV_AWS_353: "Ensure that RDS instances have performance insights enabled"
	FAILED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-353

		55 | resource "aws_db_instance" "transactions" {
		56 |   identifier             = "${var.project}-${var.environment}-txdb"
		57 |   engine                 = "postgres"
		58 |   engine_version         = "14"
		59 |   instance_class         = "db.t3.micro"
		60 |   allocated_storage      = 20
		61 |   db_name                = "transactiondb"
		62 |   username               = "txuser"
		63 |   password               = var.db_password
		64 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		65 |   vpc_security_group_ids = [aws_security_group.db.id]
		66 |   publicly_accessible    = true
		67 |   storage_encrypted      = false
		68 |   skip_final_snapshot    = true
		69 |   deletion_protection    = false
		70 | }

Check: CKV_AWS_293: "Ensure that AWS database instances have deletion protection enabled"
	FAILED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-293

		55 | resource "aws_db_instance" "transactions" {
		56 |   identifier             = "${var.project}-${var.environment}-txdb"
		57 |   engine                 = "postgres"
		58 |   engine_version         = "14"
		59 |   instance_class         = "db.t3.micro"
		60 |   allocated_storage      = 20
		61 |   db_name                = "transactiondb"
		62 |   username               = "txuser"
		63 |   password               = var.db_password
		64 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		65 |   vpc_security_group_ids = [aws_security_group.db.id]
		66 |   publicly_accessible    = true
		67 |   storage_encrypted      = false
		68 |   skip_final_snapshot    = true
		69 |   deletion_protection    = false
		70 | }

Check: CKV_AWS_129: "Ensure that respective logs of Amazon Relational Database Service (Amazon RDS) are enabled"
	FAILED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/ensure-that-respective-logs-of-amazon-relational-database-service-amazon-rds-are-enabled

		55 | resource "aws_db_instance" "transactions" {
		56 |   identifier             = "${var.project}-${var.environment}-txdb"
		57 |   engine                 = "postgres"
		58 |   engine_version         = "14"
		59 |   instance_class         = "db.t3.micro"
		60 |   allocated_storage      = 20
		61 |   db_name                = "transactiondb"
		62 |   username               = "txuser"
		63 |   password               = var.db_password
		64 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		65 |   vpc_security_group_ids = [aws_security_group.db.id]
		66 |   publicly_accessible    = true
		67 |   storage_encrypted      = false
		68 |   skip_final_snapshot    = true
		69 |   deletion_protection    = false
		70 | }

Check: CKV_AWS_157: "Ensure that RDS instances have Multi-AZ enabled"
	FAILED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/general-73

		55 | resource "aws_db_instance" "transactions" {
		56 |   identifier             = "${var.project}-${var.environment}-txdb"
		57 |   engine                 = "postgres"
		58 |   engine_version         = "14"
		59 |   instance_class         = "db.t3.micro"
		60 |   allocated_storage      = 20
		61 |   db_name                = "transactiondb"
		62 |   username               = "txuser"
		63 |   password               = var.db_password
		64 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		65 |   vpc_security_group_ids = [aws_security_group.db.id]
		66 |   publicly_accessible    = true
		67 |   storage_encrypted      = false
		68 |   skip_final_snapshot    = true
		69 |   deletion_protection    = false
		70 | }

Check: CKV_AWS_17: "Ensure all data stored in RDS is not publicly accessible"
	FAILED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/public-policies/public-2

		55 | resource "aws_db_instance" "transactions" {
		56 |   identifier             = "${var.project}-${var.environment}-txdb"
		57 |   engine                 = "postgres"
		58 |   engine_version         = "14"
		59 |   instance_class         = "db.t3.micro"
		60 |   allocated_storage      = 20
		61 |   db_name                = "transactiondb"
		62 |   username               = "txuser"
		63 |   password               = var.db_password
		64 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		65 |   vpc_security_group_ids = [aws_security_group.db.id]
		66 |   publicly_accessible    = true
		67 |   storage_encrypted      = false
		68 |   skip_final_snapshot    = true
		69 |   deletion_protection    = false
		70 | }

Check: CKV_AWS_226: "Ensure DB instance gets all minor upgrades automatically"
	FAILED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-aws-db-instance-gets-all-minor-upgrades-automatically

		55 | resource "aws_db_instance" "transactions" {
		56 |   identifier             = "${var.project}-${var.environment}-txdb"
		57 |   engine                 = "postgres"
		58 |   engine_version         = "14"
		59 |   instance_class         = "db.t3.micro"
		60 |   allocated_storage      = 20
		61 |   db_name                = "transactiondb"
		62 |   username               = "txuser"
		63 |   password               = var.db_password
		64 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		65 |   vpc_security_group_ids = [aws_security_group.db.id]
		66 |   publicly_accessible    = true
		67 |   storage_encrypted      = false
		68 |   skip_final_snapshot    = true
		69 |   deletion_protection    = false
		70 | }

Check: CKV_AWS_118: "Ensure that enhanced monitoring is enabled for Amazon RDS instances"
	FAILED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Calling File: /main.tf:60-67
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/ensure-that-enhanced-monitoring-is-enabled-for-amazon-rds-instances

		55 | resource "aws_db_instance" "transactions" {
		56 |   identifier             = "${var.project}-${var.environment}-txdb"
		57 |   engine                 = "postgres"
		58 |   engine_version         = "14"
		59 |   instance_class         = "db.t3.micro"
		60 |   allocated_storage      = 20
		61 |   db_name                = "transactiondb"
		62 |   username               = "txuser"
		63 |   password               = var.db_password
		64 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		65 |   vpc_security_group_ids = [aws_security_group.db.id]
		66 |   publicly_accessible    = true
		67 |   storage_encrypted      = false
		68 |   skip_final_snapshot    = true
		69 |   deletion_protection    = false
		70 | }

Check: CKV_AWS_56: "Ensure S3 bucket has 'restrict_public_buckets' enabled"
	FAILED for resource: module.s3.aws_s3_bucket_public_access_block.artifacts
	File: /modules/s3/main.tf:20-27
	Calling File: /main.tf:47-50
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-22

		20 | resource "aws_s3_bucket_public_access_block" "artifacts" {
		21 |   bucket = aws_s3_bucket.artifacts.id
		22 | 
		23 |   block_public_acls       = false
		24 |   block_public_policy     = false
		25 |   ignore_public_acls      = false
		26 |   restrict_public_buckets = false
		27 | }

Check: CKV_AWS_55: "Ensure S3 bucket has ignore public ACLs enabled"
	FAILED for resource: module.s3.aws_s3_bucket_public_access_block.artifacts
	File: /modules/s3/main.tf:20-27
	Calling File: /main.tf:47-50
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-21

		20 | resource "aws_s3_bucket_public_access_block" "artifacts" {
		21 |   bucket = aws_s3_bucket.artifacts.id
		22 | 
		23 |   block_public_acls       = false
		24 |   block_public_policy     = false
		25 |   ignore_public_acls      = false
		26 |   restrict_public_buckets = false
		27 | }

Check: CKV_AWS_54: "Ensure S3 bucket has block public policy enabled"
	FAILED for resource: module.s3.aws_s3_bucket_public_access_block.artifacts
	File: /modules/s3/main.tf:20-27
	Calling File: /main.tf:47-50
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-20

		20 | resource "aws_s3_bucket_public_access_block" "artifacts" {
		21 |   bucket = aws_s3_bucket.artifacts.id
		22 | 
		23 |   block_public_acls       = false
		24 |   block_public_policy     = false
		25 |   ignore_public_acls      = false
		26 |   restrict_public_buckets = false
		27 | }

Check: CKV_AWS_53: "Ensure S3 bucket has block public ACLS enabled"
	FAILED for resource: module.s3.aws_s3_bucket_public_access_block.artifacts
	File: /modules/s3/main.tf:20-27
	Calling File: /main.tf:47-50
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-19

		20 | resource "aws_s3_bucket_public_access_block" "artifacts" {
		21 |   bucket = aws_s3_bucket.artifacts.id
		22 | 
		23 |   block_public_acls       = false
		24 |   block_public_policy     = false
		25 |   ignore_public_acls      = false
		26 |   restrict_public_buckets = false
		27 | }

Check: CKV_AWS_56: "Ensure S3 bucket has 'restrict_public_buckets' enabled"
	FAILED for resource: module.s3.aws_s3_bucket_public_access_block.audit_logs
	File: /modules/s3/main.tf:34-41
	Calling File: /main.tf:47-50
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-22

		34 | resource "aws_s3_bucket_public_access_block" "audit_logs" {
		35 |   bucket = aws_s3_bucket.audit_logs.id
		36 | 
		37 |   block_public_acls       = false
		38 |   block_public_policy     = false
		39 |   ignore_public_acls      = false
		40 |   restrict_public_buckets = false
		41 | }

Check: CKV_AWS_55: "Ensure S3 bucket has ignore public ACLs enabled"
	FAILED for resource: module.s3.aws_s3_bucket_public_access_block.audit_logs
	File: /modules/s3/main.tf:34-41
	Calling File: /main.tf:47-50
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-21

		34 | resource "aws_s3_bucket_public_access_block" "audit_logs" {
		35 |   bucket = aws_s3_bucket.audit_logs.id
		36 | 
		37 |   block_public_acls       = false
		38 |   block_public_policy     = false
		39 |   ignore_public_acls      = false
		40 |   restrict_public_buckets = false
		41 | }

Check: CKV_AWS_54: "Ensure S3 bucket has block public policy enabled"
	FAILED for resource: module.s3.aws_s3_bucket_public_access_block.audit_logs
	File: /modules/s3/main.tf:34-41
	Calling File: /main.tf:47-50
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-20

		34 | resource "aws_s3_bucket_public_access_block" "audit_logs" {
		35 |   bucket = aws_s3_bucket.audit_logs.id
		36 | 
		37 |   block_public_acls       = false
		38 |   block_public_policy     = false
		39 |   ignore_public_acls      = false
		40 |   restrict_public_buckets = false
		41 | }

Check: CKV_AWS_53: "Ensure S3 bucket has block public ACLS enabled"
	FAILED for resource: module.s3.aws_s3_bucket_public_access_block.audit_logs
	File: /modules/s3/main.tf:34-41
	Calling File: /main.tf:47-50
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/bc-aws-s3-19

		34 | resource "aws_s3_bucket_public_access_block" "audit_logs" {
		35 |   bucket = aws_s3_bucket.audit_logs.id
		36 | 
		37 |   block_public_acls       = false
		38 |   block_public_policy     = false
		39 |   ignore_public_acls      = false
		40 |   restrict_public_buckets = false
		41 | }

Check: CKV_AWS_130: "Ensure VPC subnets do not assign public IP by default"
	FAILED for resource: module.vpc.aws_subnet.public[0]
	File: /modules/vpc/main.tf:23-33
	Calling File: /main.tf:36-40
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-vpc-subnets-do-not-assign-public-ip-by-default

		23 | resource "aws_subnet" "public" {
		24 |   count                   = 2
		25 |   vpc_id                  = aws_vpc.main.id
		26 |   cidr_block              = "10.0.${count.index + 1}.0/24"
		27 |   availability_zone       = ["${var.project}-az-a", "${var.project}-az-b"][count.index]
		28 |   map_public_ip_on_launch = true # IV-10
		29 | 
		30 |   tags = {
		31 |     Name = "${var.project}-${var.environment}-public-${count.index}"
		32 |   }
		33 | }

Check: CKV_AWS_23: "Ensure every security group and rule has a description"
	FAILED for resource: module.vpc.aws_security_group.wide_open
	File: /modules/vpc/main.tf:51-69
	Calling File: /main.tf:36-40
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/networking-31

		51 | resource "aws_security_group" "wide_open" {
		52 |   name        = "${var.project}-${var.environment}-wide-open"
		53 |   description = "Deliberately permissive"
		54 |   vpc_id      = aws_vpc.main.id
		55 | 
		56 |   ingress {
		57 |     from_port   = 0
		58 |     to_port     = 65535
		59 |     protocol    = "tcp"
		60 |     cidr_blocks = ["0.0.0.0/0"] # IV-08 adjacent — overly broad ingress.
		61 |   }
		62 | 
		63 |   egress {
		64 |     from_port   = 0
		65 |     to_port     = 0
		66 |     protocol    = "-1"
		67 |     cidr_blocks = ["0.0.0.0/0"]
		68 |   }
		69 | }

Check: CKV_AWS_382: "Ensure no security groups allow egress from 0.0.0.0:0 to port -1"
	FAILED for resource: module.vpc.aws_security_group.wide_open
	File: /modules/vpc/main.tf:51-69
	Calling File: /main.tf:36-40
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/bc-aws-382

		51 | resource "aws_security_group" "wide_open" {
		52 |   name        = "${var.project}-${var.environment}-wide-open"
		53 |   description = "Deliberately permissive"
		54 |   vpc_id      = aws_vpc.main.id
		55 | 
		56 |   ingress {
		57 |     from_port   = 0
		58 |     to_port     = 65535
		59 |     protocol    = "tcp"
		60 |     cidr_blocks = ["0.0.0.0/0"] # IV-08 adjacent — overly broad ingress.
		61 |   }
		62 | 
		63 |   egress {
		64 |     from_port   = 0
		65 |     to_port     = 0
		66 |     protocol    = "-1"
		67 |     cidr_blocks = ["0.0.0.0/0"]
		68 |   }
		69 | }

Check: CKV_AWS_24: "Ensure no security groups allow ingress from 0.0.0.0:0 to port 22"
	FAILED for resource: module.vpc.aws_security_group.wide_open
	File: /modules/vpc/main.tf:51-69
	Calling File: /main.tf:36-40
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/networking-1-port-security

		51 | resource "aws_security_group" "wide_open" {
		52 |   name        = "${var.project}-${var.environment}-wide-open"
		53 |   description = "Deliberately permissive"
		54 |   vpc_id      = aws_vpc.main.id
		55 | 
		56 |   ingress {
		57 |     from_port   = 0
		58 |     to_port     = 65535
		59 |     protocol    = "tcp"
		60 |     cidr_blocks = ["0.0.0.0/0"] # IV-08 adjacent — overly broad ingress.
		61 |   }
		62 | 
		63 |   egress {
		64 |     from_port   = 0
		65 |     to_port     = 0
		66 |     protocol    = "-1"
		67 |     cidr_blocks = ["0.0.0.0/0"]
		68 |   }
		69 | }

Check: CKV_AWS_260: "Ensure no security groups allow ingress from 0.0.0.0:0 to port 80"
	FAILED for resource: module.vpc.aws_security_group.wide_open
	File: /modules/vpc/main.tf:51-69
	Calling File: /main.tf:36-40
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-aws-security-groups-do-not-allow-ingress-from-00000-to-port-80

		51 | resource "aws_security_group" "wide_open" {
		52 |   name        = "${var.project}-${var.environment}-wide-open"
		53 |   description = "Deliberately permissive"
		54 |   vpc_id      = aws_vpc.main.id
		55 | 
		56 |   ingress {
		57 |     from_port   = 0
		58 |     to_port     = 65535
		59 |     protocol    = "tcp"
		60 |     cidr_blocks = ["0.0.0.0/0"] # IV-08 adjacent — overly broad ingress.
		61 |   }
		62 | 
		63 |   egress {
		64 |     from_port   = 0
		65 |     to_port     = 0
		66 |     protocol    = "-1"
		67 |     cidr_blocks = ["0.0.0.0/0"]
		68 |   }
		69 | }

Check: CKV_AWS_25: "Ensure no security groups allow ingress from 0.0.0.0:0 to port 3389"
	FAILED for resource: module.vpc.aws_security_group.wide_open
	File: /modules/vpc/main.tf:51-69
	Calling File: /main.tf:36-40
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/networking-2

		51 | resource "aws_security_group" "wide_open" {
		52 |   name        = "${var.project}-${var.environment}-wide-open"
		53 |   description = "Deliberately permissive"
		54 |   vpc_id      = aws_vpc.main.id
		55 | 
		56 |   ingress {
		57 |     from_port   = 0
		58 |     to_port     = 65535
		59 |     protocol    = "tcp"
		60 |     cidr_blocks = ["0.0.0.0/0"] # IV-08 adjacent — overly broad ingress.
		61 |   }
		62 | 
		63 |   egress {
		64 |     from_port   = 0
		65 |     to_port     = 0
		66 |     protocol    = "-1"
		67 |     cidr_blocks = ["0.0.0.0/0"]
		68 |   }
		69 | }

Check: CKV_AWS_130: "Ensure VPC subnets do not assign public IP by default"
	FAILED for resource: module.vpc.aws_subnet.public[1]
	File: /modules/vpc/main.tf:23-33
	Calling File: /main.tf:36-40
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-vpc-subnets-do-not-assign-public-ip-by-default

		23 | resource "aws_subnet" "public" {
		24 |   count                   = 2
		25 |   vpc_id                  = aws_vpc.main.id
		26 |   cidr_block              = "10.0.${count.index + 1}.0/24"
		27 |   availability_zone       = ["${var.project}-az-a", "${var.project}-az-b"][count.index]
		28 |   map_public_ip_on_launch = true # IV-10
		29 | 
		30 |   tags = {
		31 |     Name = "${var.project}-${var.environment}-public-${count.index}"
		32 |   }
		33 | }

Check: CKV2_AWS_11: "Ensure VPC flow logging is enabled in all VPCs"
	FAILED for resource: module.vpc.aws_vpc.main
	File: /modules/vpc/main.tf:4-12
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/logging-9-enable-vpc-flow-logging

		4  | resource "aws_vpc" "main" {
		5  |   cidr_block           = "10.0.0.0/16"
		6  |   enable_dns_hostnames = true
		7  |   enable_dns_support   = true
		8  | 
		9  |   tags = {
		10 |     Name = "${var.project}-${var.environment}-vpc"
		11 |   }
		12 | }

Check: CKV2_AWS_12: "Ensure the default security group of every VPC restricts all traffic"
	FAILED for resource: module.vpc.aws_vpc.main
	File: /modules/vpc/main.tf:4-12
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/networking-4

		4  | resource "aws_vpc" "main" {
		5  |   cidr_block           = "10.0.0.0/16"
		6  |   enable_dns_hostnames = true
		7  |   enable_dns_support   = true
		8  | 
		9  |   tags = {
		10 |     Name = "${var.project}-${var.environment}-vpc"
		11 |   }
		12 | }

Check: CKV2_AWS_30: "Ensure Postgres RDS as aws_db_instance has Query Logging enabled"
	FAILED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-postgres-rds-has-query-logging-enabled

		35 | resource "aws_db_instance" "auth" {
		36 |   identifier             = "${var.project}-${var.environment}-authdb"
		37 |   engine                 = "postgres"
		38 |   engine_version         = "14"
		39 |   instance_class         = "db.t3.micro"
		40 |   allocated_storage      = 20
		41 |   db_name                = "authdb"
		42 |   username               = "authuser"
		43 |   password               = var.db_password # IV-01 via Terraform variable.
		44 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		45 |   vpc_security_group_ids = [aws_security_group.db.id]
		46 |   publicly_accessible    = true  # Checkov CKV_AWS_17.
		47 |   storage_encrypted      = false # Checkov CKV_AWS_16.
		48 |   skip_final_snapshot    = true  # Checkov CKV_AWS_118.
		49 |   deletion_protection    = false
		50 | 
		51 |   # Deliberately missing: backup_retention_period, performance_insights_enabled,
		52 |   # enabled_cloudwatch_logs_exports, iam_database_authentication_enabled.
		53 | }

Check: CKV2_AWS_30: "Ensure Postgres RDS as aws_db_instance has Query Logging enabled"
	FAILED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-postgres-rds-has-query-logging-enabled

		55 | resource "aws_db_instance" "transactions" {
		56 |   identifier             = "${var.project}-${var.environment}-txdb"
		57 |   engine                 = "postgres"
		58 |   engine_version         = "14"
		59 |   instance_class         = "db.t3.micro"
		60 |   allocated_storage      = 20
		61 |   db_name                = "transactiondb"
		62 |   username               = "txuser"
		63 |   password               = var.db_password
		64 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		65 |   vpc_security_group_ids = [aws_security_group.db.id]
		66 |   publicly_accessible    = true
		67 |   storage_encrypted      = false
		68 |   skip_final_snapshot    = true
		69 |   deletion_protection    = false
		70 | }

Check: CKV2_AWS_62: "Ensure S3 buckets should have event notifications enabled"
	FAILED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:7-13
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-2-62

		7  | resource "aws_s3_bucket" "artifacts" {
		8  |   bucket = "${var.project}-artifacts"
		9  | 
		10 |   tags = {
		11 |     Purpose = "CI/CD artifacts and SBOMs"
		12 |   }
		13 | }

Check: CKV2_AWS_62: "Ensure S3 buckets should have event notifications enabled"
	FAILED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:29-31
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-2-62

		29 | resource "aws_s3_bucket" "audit_logs" {
		30 |   bucket = "${var.project}-audit-logs"
		31 | }

Check: CKV2_AWS_5: "Ensure that Security Groups are attached to another resource"
	FAILED for resource: module.vpc.aws_security_group.wide_open
	File: /modules/vpc/main.tf:51-69
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/ensure-that-security-groups-are-attached-to-ec2-instances-or-elastic-network-interfaces-enis

		51 | resource "aws_security_group" "wide_open" {
		52 |   name        = "${var.project}-${var.environment}-wide-open"
		53 |   description = "Deliberately permissive"
		54 |   vpc_id      = aws_vpc.main.id
		55 | 
		56 |   ingress {
		57 |     from_port   = 0
		58 |     to_port     = 65535
		59 |     protocol    = "tcp"
		60 |     cidr_blocks = ["0.0.0.0/0"] # IV-08 adjacent — overly broad ingress.
		61 |   }
		62 | 
		63 |   egress {
		64 |     from_port   = 0
		65 |     to_port     = 0
		66 |     protocol    = "-1"
		67 |     cidr_blocks = ["0.0.0.0/0"]
		68 |   }
		69 | }

Check: CKV2_AWS_60: "Ensure RDS instance with copy tags to snapshots is enabled"
	FAILED for resource: module.rds.aws_db_instance.auth
	File: /modules/rds/main.tf:35-53
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-2-60

		35 | resource "aws_db_instance" "auth" {
		36 |   identifier             = "${var.project}-${var.environment}-authdb"
		37 |   engine                 = "postgres"
		38 |   engine_version         = "14"
		39 |   instance_class         = "db.t3.micro"
		40 |   allocated_storage      = 20
		41 |   db_name                = "authdb"
		42 |   username               = "authuser"
		43 |   password               = var.db_password # IV-01 via Terraform variable.
		44 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		45 |   vpc_security_group_ids = [aws_security_group.db.id]
		46 |   publicly_accessible    = true  # Checkov CKV_AWS_17.
		47 |   storage_encrypted      = false # Checkov CKV_AWS_16.
		48 |   skip_final_snapshot    = true  # Checkov CKV_AWS_118.
		49 |   deletion_protection    = false
		50 | 
		51 |   # Deliberately missing: backup_retention_period, performance_insights_enabled,
		52 |   # enabled_cloudwatch_logs_exports, iam_database_authentication_enabled.
		53 | }

Check: CKV2_AWS_60: "Ensure RDS instance with copy tags to snapshots is enabled"
	FAILED for resource: module.rds.aws_db_instance.transactions
	File: /modules/rds/main.tf:55-70
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/bc-aws-2-60

		55 | resource "aws_db_instance" "transactions" {
		56 |   identifier             = "${var.project}-${var.environment}-txdb"
		57 |   engine                 = "postgres"
		58 |   engine_version         = "14"
		59 |   instance_class         = "db.t3.micro"
		60 |   allocated_storage      = 20
		61 |   db_name                = "transactiondb"
		62 |   username               = "txuser"
		63 |   password               = var.db_password
		64 |   db_subnet_group_name   = aws_db_subnet_group.main.name
		65 |   vpc_security_group_ids = [aws_security_group.db.id]
		66 |   publicly_accessible    = true
		67 |   storage_encrypted      = false
		68 |   skip_final_snapshot    = true
		69 |   deletion_protection    = false
		70 | }

Check: CKV2_AWS_61: "Ensure that an S3 bucket has a lifecycle configuration"
	FAILED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:7-13
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-2-61

		7  | resource "aws_s3_bucket" "artifacts" {
		8  |   bucket = "${var.project}-artifacts"
		9  | 
		10 |   tags = {
		11 |     Purpose = "CI/CD artifacts and SBOMs"
		12 |   }
		13 | }

Check: CKV2_AWS_61: "Ensure that an S3 bucket has a lifecycle configuration"
	FAILED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:29-31
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-2-61

		29 | resource "aws_s3_bucket" "audit_logs" {
		30 |   bucket = "${var.project}-audit-logs"
		31 | }

Check: CKV_AWS_144: "Ensure that S3 bucket has cross-region replication enabled"
	FAILED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:7-13
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-s3-bucket-has-cross-region-replication-enabled

		7  | resource "aws_s3_bucket" "artifacts" {
		8  |   bucket = "${var.project}-artifacts"
		9  | 
		10 |   tags = {
		11 |     Purpose = "CI/CD artifacts and SBOMs"
		12 |   }
		13 | }

Check: CKV_AWS_144: "Ensure that S3 bucket has cross-region replication enabled"
	FAILED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:29-31
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-s3-bucket-has-cross-region-replication-enabled

		29 | resource "aws_s3_bucket" "audit_logs" {
		30 |   bucket = "${var.project}-audit-logs"
		31 | }

Check: CKV_AWS_145: "Ensure that S3 buckets are encrypted with KMS by default"
	FAILED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:7-13
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-s3-buckets-are-encrypted-with-kms-by-default

		7  | resource "aws_s3_bucket" "artifacts" {
		8  |   bucket = "${var.project}-artifacts"
		9  | 
		10 |   tags = {
		11 |     Purpose = "CI/CD artifacts and SBOMs"
		12 |   }
		13 | }

Check: CKV_AWS_145: "Ensure that S3 buckets are encrypted with KMS by default"
	FAILED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:29-31
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-s3-buckets-are-encrypted-with-kms-by-default

		29 | resource "aws_s3_bucket" "audit_logs" {
		30 |   bucket = "${var.project}-audit-logs"
		31 | }

Check: CKV2_AWS_6: "Ensure that S3 bucket has a Public Access block"
	FAILED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:7-13
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/s3-bucket-should-have-public-access-blocks-defaults-to-false-if-the-public-access-block-is-not-attached

		7  | resource "aws_s3_bucket" "artifacts" {
		8  |   bucket = "${var.project}-artifacts"
		9  | 
		10 |   tags = {
		11 |     Purpose = "CI/CD artifacts and SBOMs"
		12 |   }
		13 | }

Check: CKV2_AWS_6: "Ensure that S3 bucket has a Public Access block"
	FAILED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:29-31
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/s3-bucket-should-have-public-access-blocks-defaults-to-false-if-the-public-access-block-is-not-attached

		29 | resource "aws_s3_bucket" "audit_logs" {
		30 |   bucket = "${var.project}-audit-logs"
		31 | }

Check: CKV_AWS_18: "Ensure the S3 bucket has access logging enabled"
	FAILED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:7-13
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-13-enable-logging

		7  | resource "aws_s3_bucket" "artifacts" {
		8  |   bucket = "${var.project}-artifacts"
		9  | 
		10 |   tags = {
		11 |     Purpose = "CI/CD artifacts and SBOMs"
		12 |   }
		13 | }

Check: CKV_AWS_18: "Ensure the S3 bucket has access logging enabled"
	FAILED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:29-31
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-13-enable-logging

		29 | resource "aws_s3_bucket" "audit_logs" {
		30 |   bucket = "${var.project}-audit-logs"
		31 | }

Check: CKV_AWS_21: "Ensure all data stored in the S3 bucket have versioning enabled"
	FAILED for resource: module.s3.aws_s3_bucket.artifacts
	File: /modules/s3/main.tf:7-13
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-16-enable-versioning

		7  | resource "aws_s3_bucket" "artifacts" {
		8  |   bucket = "${var.project}-artifacts"
		9  | 
		10 |   tags = {
		11 |     Purpose = "CI/CD artifacts and SBOMs"
		12 |   }
		13 | }

Check: CKV_AWS_21: "Ensure all data stored in the S3 bucket have versioning enabled"
	FAILED for resource: module.s3.aws_s3_bucket.audit_logs
	File: /modules/s3/main.tf:29-31
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-16-enable-versioning

		29 | resource "aws_s3_bucket" "audit_logs" {
		30 |   bucket = "${var.project}-audit-logs"
		31 | }

Check: CKV2_AWS_40: "Ensure AWS IAM policy does not allow full IAM privileges"
	FAILED for resource: module.iam.aws_iam_role_policy.app_inline
	File: /modules/iam/main.tf:44-56
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-iam-policies/bc-aws-2-40

		44 | resource "aws_iam_role_policy" "app_inline" {
		45 |   name = "${var.project}-app-inline"
		46 |   role = aws_iam_role.app_role.id
		47 | 
		48 |   policy = jsonencode({
		49 |     Version = "2012-10-17"
		50 |     Statement = [{
		51 |       Effect   = "Allow"
		52 |       Action   = "*"     # IV-08 — wildcard action.
		53 |       Resource = "*"     # IV-08 — wildcard resource.
		54 |     }]
		55 |   })
		56 | }


