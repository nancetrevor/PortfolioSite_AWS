variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS CLI profile for Terraform"
  type        = string
}

variable "domain_name" {
  description = "domain name for portfolio site"
  type        = string
}
