variable "app_name" {
  type = string
  description = "Application name"
  default = "ecs-demo"
}

variable "app_services" {
  type = list(string)
  description = "service name list"
}