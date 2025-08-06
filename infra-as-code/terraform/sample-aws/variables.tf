#
# Variables Configuration. Check for REPLACE to substitute custom values. Check the description of each
# tag for more information
#

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  default = "gambia" #REPLACE
}

variable "vpc_cidr_block" {
  description = "CIDR block"
  default = "192.168.0.0/16"
}


variable "network_availability_zones" {
  description = "Configure availability zones configuration for VPC. Leave as default for India. Recommendation is to have subnets in at least two availability zones"
  default = ["ap-south-1b", "ap-south-1a"] #REPLACE IF NEEDED
}

variable "availability_zones" {
  description = "Amazon EKS runs and scales the Kubernetes control plane across multiple AWS Availability Zones to ensure high availability. Specify a comma separated list to have a cluster spanning multiple zones. Note that this will have cost implications"
  default = ["ap-south-1b"] #REPLACE IF NEEDED
}

variable "kubernetes_version" {
  description = "kubernetes version"
  default = "1.29"
}

variable "instance_type" {
  description = "eGov recommended below instance type as a default"
  default = "r5ad.large"
}

variable "override_instance_types" {
  description = "Arry of instance types for SPOT instances"
  default = ["r5a.large", "r5ad.large", "r5d.large", "m4.xlarge"]
  
}

variable "number_of_worker_nodes" {
  description = "eGov recommended below worker node counts as default"
  default = "3" #REPLACE IF NEEDED
}

variable "ssh_key_name" {
  description = "ssh key name, not required if your using spot instance types"
  default = "faizan" #REPLACE
}


variable "db_name" {
  description = "RDS DB name. Make sure there are no hyphens or other special characters in the DB name. Else, DB creation will fail"
  default = "gambia" #REPLACE
}

variable "db_username" {
  description = "RDS database user name"
  default = "gambia" #REPLACE
}

#DO NOT fill in here. This will be asked at runtime
variable "db_password" {}

variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDFIlJLzOK/C2d90vNJ3BIn6DXvT8VIgHA92x5wPgoeEt5mmBmMsIgjrLm0bZAFe0oHC+eQq6pZwiDqeiqQ7U4GG2pLZrTcECoWOLnoTEkK8z5aEgizwSczk/mgROML2EhxROlZljQ49mwXtrMIIhmkZazX9EocNY0bo0iP3FeuQK8IgJ4zaBNvAV59ZCg5N0EqSIAgWvAbRZsNmxMAYajxGEa9xbH73ioGkab+uEZzSGF2hl5mp7GChc91Q/OwJsuthb7eGiORvrCSuB2dSfn1MkTIAMg7sI7pFRghgbwiKu2wwHjOYDgZ//6csNycxT3CJFbX5mZIWqDDP2K4edre7OB/VGb0xw9j2ZjuCHMTGDelVKbYdzUzm0WtcU23POoJ+Sm6/mjIwuA/wUwAVZOZ8JDfTlIquCyo9BH/M1jfCBm7GvasPxzSJbMX4KiNqfEIzWfQl8G7ieYxjSjbbo2KbfD2dKeMZF7iaqpooe6Tx042FyX7k45fBq7ewGecOhjnmH86rRh+7cDnuHgLf0cZsYgwuHLAfLyPfiUrXdAECWnxAAyBCAPYQsfrWhO/czMF7rQRPP7sKW0j2VIWDx0weOrZjXmHKTv/X/JUvpbSgbm3z9hvvSEUuSqf3+MnXdQ8znb8BXwPv+RuNt3v+yyXIIyLcsVzPO7W4nLo9bMh8w=="
  description = "ssh key"
}

## change ssh key_name eg. digit-quickstart_your-name



