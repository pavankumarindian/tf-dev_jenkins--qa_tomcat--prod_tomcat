variable "user_data_install_jenkins" {
  description = "User data script for installing Jenkins"
  type        = string
  default     = ""
}

variable "user_data_install_qa_tomcat" {
  description = "User data script for installing QA Tomcat"
  type        = string
  default     = ""
}

variable "user_data_install_prod_tomcat" {
  description = "User data script for installing Prod Tomcat"
  type        = string
  default     = ""
}
