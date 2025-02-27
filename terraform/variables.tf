variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project     = "expense"
    Environment = "dev"
    Terraform   = true
    Component   = "frontend"
  }
}

variable "zone_name" {
  default = "daws-78s.cloud"
}

# created this as part of Jenkins CD
variable "app_version" {

}
