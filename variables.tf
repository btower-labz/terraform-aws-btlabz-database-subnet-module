variable "name" {
  description = "Database subnet name or name prefix"
  type        = string
  default     = "sandbox"
  validation {
    condition     = length(var.name) > 0
    error_message = "The name must be a non-empty string."
  }
}

variable "use_prefix" {
  description = "Use name as prefix and add rendom suffix to resource names."
  type        = bool
  default     = true
}

variable "subnets" {
  description = "A list of VPC subnet IDs."
  type        = list(string)
  validation {
    condition     = length(compact(distinct(var.subnets))) > 0
    error_message = "Subnets must non-empty list of subnet identifiers."
  }
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map
  default     = {}
}
