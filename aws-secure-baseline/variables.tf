variable "audit_log_bucket_name" {
  description = "Name of S3 bucket used to store audit logs"
}

variable "support_iam_role_principal_arns" {
  description = "A list of IAM role ARNs"
}

variable "account_type" {
  description = "One of: individual, master or member"
  default     = "individual"
}