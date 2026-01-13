resource "aws_ecs_cluster" "this" {
  name = var.ec2_name
}


resource "aws_ecs_task_definition" "this" {
  family                   = "ecs-task"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"

  container_definitions = jsonencode([
    {
      name      = "demo-container"
      image     = "nginx"
      essential = true
      portMappings = [
        { containerPort = 80, hostPort = 80 }
      ]
    }
  ])
}


resource "aws_ecs_service" "this" {
  name            = "ecs-service"
  cluster         = aws_ecs_cluster.this.id
  desired_count   = 1
  launch_type     = "FARGATE"
  task_definition = aws_ecs_task_definition.this.arn 

  network_configuration {
    subnets          = [var.subnet_id]
    assign_public_ip = true
  }
}

