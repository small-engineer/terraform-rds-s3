variable "project_name" {
  type        = string
  description = "Project name prefix"
}

variable "environment" {
  type        = string
  description = "Environment name (e.g. dev, prod)"
}

variable "db_access_cidrs" {
  description = "List of CIDR blocks allowed to access the DB"
  type        = list(string)
  default     = []
}

variable "aws_region" {
  type        = string
  default     = "ap-northeast-1"
  description = "AWS region"
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  type    = string
  default = "10.0.1.0/24"
}

variable "availability_zone" {
  type    = string
  default = "ap-northeast-1a"
}

variable "db_name" {
  type = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}
