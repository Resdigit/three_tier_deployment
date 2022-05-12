variable "key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
  default     = "cloud-labs-nv"
}

variable "email_sns" {
  description = "Email for SNS Topic"
  type        = string
  sensitive   = true
}

variable "username" {
  description = "DB username"
  type        = string
  sensitive   = true
}

variable "password" {
  description = "DB password"
  type        = string
  sensitive   = true
}