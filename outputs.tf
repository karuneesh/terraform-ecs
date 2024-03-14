output "vpc-id" {
 value = module.vpc.vpc_id
}

output "private-subnets" {
 value = module.vpc.private_subnets
}

output "public-subnets" {
 value = module.vpc.public_subnets
}

output "internal-alb-dns" {
  value = module.internal_alb.internal_alb-dns
}

output "internal-alb-target-groups" {
  value = module.internal_alb.target_groups
}

output "public-alb-target-groups" {
  value = module.public_alb.target_groups
}

output "aws_alb_listener" {
  value = module.internal_alb.aws_alb_listener
}

output "ecr-repositories" {
 value = module.ecr.ecr_repositories
}

output "ecs-task-execution-role-arn" {
 value = module.iam.ecs_task_execution_role_arn
}

output "aws_cloudwatch_log_group" {
 value = module.ecs.aws_cloudwatch_log_group
}

output "aws_ecs_task_definition" {
 value = module.ecs.aws_cloudwatch_log_group
}