variable "cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "env_name" {
  type    = string
  default = "dev"
}

variable "public1_subnet_cidr" {
  type = string
  default = "10.0.1.0/24"
}

variable "public2_subnet_cidr" {
  type    = string
  default = "10.0.2.0/24"
}

variable "public3_subnet_cidr" {
  type    = string
  default = "10.0.3.0/24"
}

variable "public4_subnet_cidr" {
  type    = string
  default = "10.0.4.0/24"
}

variable "private1_subnet_cidr" {
  type    = string
  default = "10.0.5.0/24"
}

variable "private2_subnet_cidr" {
  type    = string
  default = "10.0.6.0/24"
}

variable "az1" {
  type    = string
  default = "us-east-1a"
}

variable "az2" {
  type    = string
  default = "us-east-1b"
}