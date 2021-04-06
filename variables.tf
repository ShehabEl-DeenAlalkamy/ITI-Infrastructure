variable "region" {
  type = string
}

variable "cidr" {
  type = string
}

variable "env_name" {
  type = string
}

variable "public1_subnet_cidr" {
  type = string
}

variable "public2_subnet_cidr" {
  type = string
}

variable "public3_subnet_cidr" {
  type = string
}

variable "public4_subnet_cidr" {
  type = string
}

variable "az1" {
  type = string
}

variable "az2" {
  type = string
}

variable "ami_id" {
  type = string
}

# RDS Variables
variable "rds_identifier" {
  type = string
}

variable "rds_db_name" {
  type = string
}

variable "rds_user" {
  type = string
}

variable "rds_passwd" {
  type = string
}

variable "rds_port" {
  type = string
}

# Redis Variables
variable "redis_group_id" {
  type = string
}

variable "redis_port" {
  type = string
}