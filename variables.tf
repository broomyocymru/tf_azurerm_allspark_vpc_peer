
variable "primary_vpc" {
  description = "primary allspark data map"
  type = "map"
}

variable "secondary_vpc" {
  description = "secondary allspark data map"
  type = "map"
}

variable "bidirectional" {
  description = "Secondary VPC VM's can access Primary VPC"
  default = "false"
}
