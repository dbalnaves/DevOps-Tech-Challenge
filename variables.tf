variable "app_name" {
  description = "The name of the app to be built"
  default = "TechChallengeApp"
}

variable "submodule" {
  description = "The name of the app to be built"
  default = "TechChallengeApp"
}

variable "viper_prefix" {
  description = "The viper prefix used on environment variables"
  default = "VTT"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "adongy/hostname-docker:latest"
}

variable "profile" {
  description = "Profile to inherit from AWS CLI"
  default = "default"
}

variable "region" {
  description = "Region to deploy app"
  default = "ap-southeast-2"
}

variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "3"
}

variable "rds_port" {
  description = "Port that RDS will listen for incomming database connections"
  default     = 5432
}

variable "rds_size" {
  description = "Size of RDS EBS volume to create"
  default = 5
}
variable "rds_storage" {
  description = "Type of RDS EBS volume to create"
  default = "gp2"
}

variable "rds_class" {
  description = "Class of RDS instance to create"
  default = "db.t2.micro"
}

variable "rds_engine" {
  description = "Engine type of RDS instance to create"
  default = "postgres"
}

variable "rds_ver" {
  description = "Engine type of RDS Postgres instance to create"
  default = "9.6.9"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 3000
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 1
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "256"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "512"
}

