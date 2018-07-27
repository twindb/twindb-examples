variable "vpc_default_subnet_cidr_blocks" {
  default =  ["10.0.0.0/24", "10.0.1.0/24"]
  type = "list"
}

variable "default_public_subnet_tag" {
  default = {
    "Name" = "Main public"
  }
  type = "map"
}

variable "default_private_subnet_tag"  {
  type = "map"
  default = {
    "Name" = "Main private"
  }
}

variable "default_rt_table_tag" {
  type = "map"
  default = {
    "Name" = "Main routing table for main VPC"
  }
}

variable "default_private_rt_tag" {
  type = "map"
  default = {
    "Name" = "Main private routing table for main VPC"
  }
}

variable "vpc_tags" {
  type = "map"
  default = {
    "10.0.0.0/16" = "Main VPC",
  }
}

variable "vpc_address" {
  default = "10.0.0.0/16"
}
