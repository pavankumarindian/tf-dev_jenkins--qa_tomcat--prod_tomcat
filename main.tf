module "networking" {
  source               = "./networking"
  vpc_cidr             = var.vpc_cidr
  vpc_name             = var.vpc_name
  cidr_public_subnet   = var.cidr_public_subnet
  eu_availability_zone = var.eu_availability_zone
}

module "security_group" {
  source              = "./security-groups"
  ec2_sg_name         = "SG for EC2 to enable SSH(22), HTTPS(443) and HTTP(80)"
  vpc_id              = module.networking.vpc_id
  ec2_jenkins_sg_name = "Allow port 8080 for jenkins"
  ingress_ports       = var.ingress_ports
}


module "dev-jenkins" {
  source                    = "./ec2-instances"
  ami_id                    = var.ec2_ami_id
  instance_type             = var.instance_type
  tag_name                  = "dev-env-jenkins"
  public_key                = var.public_key
  subnet_id                 = tolist(module.networking.public_subnets)[0]
  sg_for_jenkins            = [module.security_group.sg_ec2_sg_ssh_http_id, module.security_group.sg_ec2_jenkins_port_8080]
  enable_public_ip_address  = true
  user_data_install_jenkins = templatefile("./jenkins-runner-script/jenkins-installer.sh", {})
}

module "qa-tomcat" {
  source                    = "./ec2-instances"
  ami_id                    = var.ec2_ami_id
  instance_type             = var.instance_type
  tag_name                  = "qa-env-tomcat"
  public_key                = var.public_key
  subnet_id                 = tolist(module.networking.public_subnets)[0]
  sg_for_jenkins            = [module.security_group.sg_ec2_sg_ssh_http_id, module.security_group.sg_ec2_jenkins_port_8080]
  enable_public_ip_address  = true
  user_data_install_qa_tomcat = templatefile("./tomcat-runner-script/qa-tomcat-installer.sh", {})
}

module "prod-tomcat" {
  source                    = "./ec2-instances"
  ami_id                    = var.ec2_ami_id
  instance_type             = var.instance_type
  tag_name                  = "prod-env-tomcat"
  public_key                = var.public_key
  subnet_id                 = tolist(module.networking.public_subnets)[0]
  sg_for_jenkins            = [module.security_group.sg_ec2_sg_ssh_http_id, module.security_group.sg_ec2_jenkins_port_8080]
  enable_public_ip_address  = true
  user_data_install_prod_tomcat = templatefile("./tomcat-runner-script/prod-tomcat-installer.sh", {})
}
