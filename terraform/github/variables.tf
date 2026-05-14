variable "portfolio_bucket_name" {
  description = "Name of S3 bucket used for portfolio site"
  type        = string
}

variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS CLI profile for Terraform"
  type        = string
}

