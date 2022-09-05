resource "aws_lb" "example" {
  name               = "example"
  load_balancer_type = "network"

    subnet_mapping {
    subnet_id            = "subnet-0b1c5a2bca5ecc3fe"
  }
}