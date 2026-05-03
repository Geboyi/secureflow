variable "project" { type = string }
variable "environment" { type = string }
variable "vpc_id" { type = string }
variable "private_subnet_ids" { type = list(string) }

variable "db_password" {
  type      = string
  sensitive = true
}

resource "aws_db_subnet_group" "main" {
  name       = "${var.project}-${var.environment}-db-subnet"
  subnet_ids = var.private_subnet_ids
}

resource "aws_security_group" "db" {
  name        = "${var.project}-${var.environment}-db-sg"
  description = "Allow PostgreSQL traffic only from internal VPC range"
  vpc_id      = var.vpc_id

  ingress {
    description = "PostgreSQL from internal VPC range only"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }
}

resource "aws_kms_key" "rds" {
  description         = "KMS key for SecureFlow RDS encryption"
  enable_key_rotation = true
}

resource "aws_iam_role" "rds_monitoring" {
  name = "${var.project}-${var.environment}-rds-monitoring"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "monitoring.rds.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "rds_monitoring" {
  role       = aws_iam_role.rds_monitoring.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
}

resource "aws_db_parameter_group" "postgres" {
  name   = "${var.project}-${var.environment}-postgres14"
  family = "postgres14"

  parameter {
    name  = "log_statement"
    value = "all"
  }

  parameter {
    name  = "log_min_duration_statement"
    value = "0"
  }
}

resource "aws_db_instance" "auth" {
  identifier                          = "${var.project}-${var.environment}-authdb"
  engine                              = "postgres"
  engine_version                      = "14"
  instance_class                      = "db.t3.micro"
  allocated_storage                   = 20
  db_name                             = "authdb"
  username                            = "authuser"
  password                            = var.db_password
  db_subnet_group_name                = aws_db_subnet_group.main.name
  vpc_security_group_ids              = [aws_security_group.db.id]
  publicly_accessible                 = false
  storage_encrypted                   = true
  kms_key_id                          = aws_kms_key.rds.arn
  backup_retention_period             = 7
  skip_final_snapshot                 = false
  final_snapshot_identifier           = "${var.project}-${var.environment}-authdb-final"
  deletion_protection                 = true
  performance_insights_enabled        = true
  performance_insights_kms_key_id     = aws_kms_key.rds.arn
  enabled_cloudwatch_logs_exports     = ["postgresql", "upgrade"]
  iam_database_authentication_enabled = true
  auto_minor_version_upgrade          = true
  multi_az                            = true
  copy_tags_to_snapshot               = true
  monitoring_interval                 = 60
  monitoring_role_arn                 = aws_iam_role.rds_monitoring.arn
  parameter_group_name                = aws_db_parameter_group.postgres.name
}

resource "aws_db_instance" "transactions" {
  identifier                          = "${var.project}-${var.environment}-txdb"
  engine                              = "postgres"
  engine_version                      = "14"
  instance_class                      = "db.t3.micro"
  allocated_storage                   = 20
  db_name                             = "transactiondb"
  username                            = "txuser"
  password                            = var.db_password
  db_subnet_group_name                = aws_db_subnet_group.main.name
  vpc_security_group_ids              = [aws_security_group.db.id]
  publicly_accessible                 = false
  storage_encrypted                   = true
  kms_key_id                          = aws_kms_key.rds.arn
  backup_retention_period             = 7
  skip_final_snapshot                 = false
  final_snapshot_identifier           = "${var.project}-${var.environment}-txdb-final"
  deletion_protection                 = true
  performance_insights_enabled        = true
  performance_insights_kms_key_id     = aws_kms_key.rds.arn
  enabled_cloudwatch_logs_exports     = ["postgresql", "upgrade"]
  iam_database_authentication_enabled = true
  auto_minor_version_upgrade          = true
  multi_az                            = true
  copy_tags_to_snapshot               = true
  monitoring_interval                 = 60
  monitoring_role_arn                 = aws_iam_role.rds_monitoring.arn
  parameter_group_name                = aws_db_parameter_group.postgres.name
}