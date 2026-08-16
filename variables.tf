variable "location" {
  description = "Azure region where resources are deployed"
  type        = string
  default     = "France Central"
}

variable "project_name" {
  description = "Base name used for resource naming"
  type        = string
  default     = "yasmine-portfolio-v2"
}