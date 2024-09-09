vpc_cidr             = "11.0.0.0/16"
vpc_name             = "myvpc"
cidr_public_subnet   = ["11.0.1.0/24"]
eu_availability_zone = ["ap-south-1a"]

ingress_ports       = [ 22, 80, 443 ]

instance_type        = "t2.micro"

ec2_ami_id           = "ami-0c2af51e265bd5e0e"

public_key           = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDNMqZk+/hWXyZQQU+em07a8q1HHNwq6+GGX0vHTYhyvWHovBkESIYLFWWXlf1efyzYWI51y6i4m4P9v6xO7O+ITEILSE2vMAagVbn1PJGUaMaK8avKy+oSTSu1HOudrvtyXmkCLaFtChmQflZv9CoFLXI0qJTcYfNGGp19BjAc9mmt4mFX0H8mph5aw5T242JjB2verU7TqD4H8IakKpdHk2EKRjzZv+bvf7RObKoPO7m7BW6C73ex5bmnJdINlLL5Lix8h7ueoqIv4XYMEDNrey0mB/O+jvBq2CSPIeFjtTH0zbGPvQFX9YapUfs1/fGGGDsjitxGuJH+U+XPpiS9OCSZHY7BoaIZJRKZn5KnZxinBmvWwc6akYtZkRxg94BZ8e/TfzLVYZULK6rFpCqC+aZTRo4P5ePKmHnHrkEfQWj1JkW+FbLKwXU/9+Tr4/bz1XAYCmArBpfIoBdK89VSVuMwhKuVTKq0lLePq5Ig4C7xhPMXtzax7cRpyoV1maWXn3krA1d3mTyCFD1j1UBH2yiuMDgx1xZJhUonQwqFydN54WONQHjydSOlo8nfR7CvHutlxxLmiMtlpxVI6KoMxr6eZhQabY6SlIhoao/9rNwDazE9+twJNC2WbVvM8wCshdsMTLJE3kOKu5E1gzRNm19PRJpDLVCiWf9q4n8I+Q== User@DESKTOP-8UBC5LJ"
