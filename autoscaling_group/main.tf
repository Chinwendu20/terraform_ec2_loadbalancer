resource "aws_launch_template" "terraform" {
  name_prefix   = "terraform"
  image_id      = "${var.ami_id}"
  instance_type = "${var.instance_type}"
}

resource "aws_autoscaling_group" "bar" {
  availability_zones = ["us-east-1a"]
  desired_capacity   = 6
  max_size           = 6
  min_size           = 6

  launch_template {
    id      = aws_launch_template.terraform.id
    version = "$Latest"
  }
}