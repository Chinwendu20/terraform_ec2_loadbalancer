variable "access_key" {
        description = "Access key to AWS console"
}
variable "secret_key" {
        description = "Secret key to AWS console"
}
variable "instance_type" {
        description = "Type of instance to use"
        default = "t2.micro"
}

variable "ami_id" {
        description = "The AMI to use"
        default = "ami-05fa00d4c63e32376"
}


