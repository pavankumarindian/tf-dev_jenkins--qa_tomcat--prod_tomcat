variable "vpc_cidr" {
  type        = string
  description = "Public Subnet CIDR values"
}

variable "vpc_name" {
  type        = string
  description = "DevOps Project 1 VPC 1"
}

variable "cidr_public_subnet" {
  type        = list(string)
  description = "Public Subnet CIDR values"
}

variable "eu_availability_zone" {
  type        = list(string)
  description = "Availability Zones"
}

variable "ec2_ami_id" {
  type        = string
  description = "DevOps Project 1 AMI Id for EC2 instance"
}

variable "public_key" {
  type        = string
  description = "DevOps Project 1 Public key for EC2 instance"
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDNMqZk+/hWXyZQQU+em07a8q1HHNwq6+GGX0vHTYhyvWHovBkESIYLFWWXlf1efyzYWI51y6i4m4P9v6xO7O+ITEILSE2vMAagVbn1PJGUaMaK8avKy+oSTSu1HOudrvtyXmkCLaFtChmQflZv9CoFLXI0qJTcYfNGGp19BjAc9mmt4mFX0H8mph5aw5T242JjB2verU7TqD4H8IakKpdHk2EKRjzZv+bvf7RObKoPO7m7BW6C73ex5bmnJdINlLL5Lix8h7ueoqIv4XYMEDNrey0mB/O+jvBq2CSPIeFjtTH0zbGPvQFX9YapUfs1/fGGGDsjitxGuJH+U+XPpiS9OCSZHY7BoaIZJRKZn5KnZxinBmvWwc6akYtZkRxg94BZ8e/TfzLVYZULK6rFpCqC+aZTRo4P5ePKmHnHrkEfQWj1JkW+FbLKwXU/9+Tr4/bz1XAYCmArBpfIoBdK89VSVuMwhKuVTKq0lLePq5Ig4C7xhPMXtzax7cRpyoV1maWXn3krA1d3mTyCFD1j1UBH2yiuMDgx1xZJhUonQwqFydN54WONQHjydSOlo8nfR7CvHutlxxLmiMtlpxVI6KoMxr6eZhQabY6SlIhoao/9rNwDazE9+twJNC2WbVvM8wCshdsMTLJE3kOKu5E1gzRNm19PRJpDLVCiWf9q4n8I+Q== User@DESKTOP-8UBC5LJ"
}

variable "instance_type" {
  type        = string
  description = "Remote state bucket name"
}

variable "ingress_ports" {
  type = list(number)
}

variable "user_data_install_qa_tomcat" {
  description = "User data script to install QA Tomcat"
  type        = string
  default     = ""
}

variable "user_data_install_jenkins" {
  description = "User data script to install Jenkins"
  type        = string
  default     = ""
}