variable "public_frontend_subnets_cidr" {
  type        = map(string)

  default     = {
    "eu-west-3a" = "172.0.1.0/24"
    "eu-west-3b" = "172.0.2.0/24"
    "eu-west-3c" = "172.0.3.0/24"
  }
}
variable "private_frontend_subnets_cidr" {
  type        = map(string)

  default     = {
    "eu-west-3a" = "172.0.4.0/24"
    "eu-west-3b" = "172.0.5.0/24"
    "eu-west-3c" = "172.0.6.0/24"
  }
}