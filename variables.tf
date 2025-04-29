variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  description = "Amazon Machine Image ID"
  default     = "ami-0e449927258d45bc4"
}

variable "key_name" {
  description = "SSH key pair me"
  default     = "alyx"
}
