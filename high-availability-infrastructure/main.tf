resource "aws_lb" "blue_elb" {
  name               = "blue-elb"
  load_balancer_type = "application"
  subnets            = var.subnet_ids_blue
  security_groups    = [module.sg.blue_sg_id]
}

resource "aws_lb_listener" "blue_http" {
  load_balancer_arn = aws_lb.blue_elb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.blue_asg_tg.arn
  }
}

resource "aws_lb_target_group" "blue_asg_tg" {
  name     = "blue-asg-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id_blue

  health_check {
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200"
    interval            = 15
    timeout             = 3
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}

resource "aws_lb" "green_elb" {
  name               = "green-elb"
  load_balancer_type = "application"
  subnets            = var.subnet_ids_green
  security_groups    = [module.sg.green_sg_id]
}

resource "aws_lb_listener" "green_http" {
  load_balancer_arn = aws_lb.green_elb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.green_asg_tg.arn
  }
}

resource "aws_lb_target_group" "green_asg_tg" {
  name     = "green-asg-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id_green

  health_check {
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200"
    interval            = 15
    timeout             = 3
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}
