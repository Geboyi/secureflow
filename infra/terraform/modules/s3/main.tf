variable "project" { type = string }

resource "aws_kms_key" "s3" {
  description         = "KMS key for SecureFlow S3 buckets"
  enable_key_rotation = true
}

resource "aws_s3_bucket" "audit_logs" {
  #checkov:skip=CKV_AWS_18:This bucket is the access-log destination; enabling logging on it would create recursive logging.
  #checkov:skip=CKV_AWS_144:Cross-region replication is out of scope for this DevSecOps lab.
  #checkov:skip=CKV2_AWS_62:Event notifications are not required for this prototype bucket.

  bucket = "${var.project}-audit-logs"

  tags = {
    Purpose = "Security and audit log storage"
  }
}

resource "aws_s3_bucket_public_access_block" "audit_logs" {
  bucket = aws_s3_bucket.audit_logs.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "audit_logs" {
  bucket = aws_s3_bucket.audit_logs.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "audit_logs" {
  bucket = aws_s3_bucket.audit_logs.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.s3.arn
      sse_algorithm     = "aws:kms"
    }
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "audit_logs" {
  bucket = aws_s3_bucket.audit_logs.id

  rule {
    id     = "expire-old-audit-logs"
    status = "Enabled"

    filter {}

    noncurrent_version_expiration {
      noncurrent_days = 90
    }
  }
}

resource "aws_s3_bucket" "artifacts" {
  #checkov:skip=CKV_AWS_144:Cross-region replication is out of scope for this DevSecOps lab.
  #checkov:skip=CKV2_AWS_62:Event notifications are not required for this prototype bucket.

  bucket = "${var.project}-artifacts"

  tags = {
    Purpose = "CI/CD artifacts and SBOMs"
  }
}

resource "aws_s3_bucket_public_access_block" "artifacts" {
  bucket = aws_s3_bucket.artifacts.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "artifacts" {
  bucket = aws_s3_bucket.artifacts.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "artifacts" {
  bucket = aws_s3_bucket.artifacts.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.s3.arn
      sse_algorithm     = "aws:kms"
    }
  }
}

resource "aws_s3_bucket_logging" "artifacts" {
  bucket = aws_s3_bucket.artifacts.id

  target_bucket = aws_s3_bucket.audit_logs.id
  target_prefix = "s3-access/artifacts/"
}

resource "aws_s3_bucket_lifecycle_configuration" "artifacts" {
  bucket = aws_s3_bucket.artifacts.id

  rule {
    id     = "expire-old-artifacts"
    status = "Enabled"

    filter {}

    noncurrent_version_expiration {
      noncurrent_days = 30
    }
  }
}

output "artifacts_bucket" {
  value = aws_s3_bucket.artifacts.id
}

output "audit_logs_bucket" {
  value = aws_s3_bucket.audit_logs.id
}