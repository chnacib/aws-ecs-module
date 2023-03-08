# aws-ecs-module
Terraform module to deploy ECS Fargate using S3 ARN as environment variable


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.51.0 |

## Providers

| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alb_main"></a> [alb\_main](#module\_alb\_main) | ../../modules/alb | n/a |
| <a name="module_cluster_main"></a> [cluster\_main](#module\_cluster\_main) | ../../modules/fargate_cluster | n/a |
| <a name="module_ecr_main"></a> [ecr\_main](#module\_ecr\_main) | ../../modules/ecr | n/a |
| <a name="module_role_policy_main"></a> [role\_policy\_main](#module\_role\_policy\_main) | ../../modules/role_policy | n/a |
| <a name="module_service_main"></a> [service\_main](#module\_service\_main) | ../../modules/ecs_service | n/a |
| <a name="module_task_main"></a> [task\_main](#module\_task\_main) | ../../modules/task_definition/1 | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_alb.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb) | resource |
| [aws_alb_listener.http](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_listener) | resource |
| [aws_alb_target_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_target_group) | resource |
| [aws_lb_listener.https](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_security_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_ecr_repository.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_ecs_service.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service) | resource |
| [aws_security_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_ecs_cluster.fargate-cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |
| [aws_iam_role_policy.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_cloudwatch_log_group.log_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_ecs_task_definition.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition) | resource |
| [aws_iam_role.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_eip.elastic-ip-for-nat-gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.terraform-igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.nat-gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route.nat-gw-route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.public-internet-igw-route](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route_table.private-route-table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.public-route-table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.private-route-1-association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.private-route-2-association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.private-route-3-association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public-route-1-association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public-route-2-association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public-route-3-association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.private-subnet-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private-subnet-2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private-subnet-3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public-subnet-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public-subnet-2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public-subnet-3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb_name"></a> [alb\_name](#input\_alb\_name) | Application Load Balancer name | `string` | n/a | yes |
| <a name="input_certificate_arn"></a> [certificate\_arn](#input\_certificate\_arn) | ACM Certificate ARN | `string` | n/a | yes |
| <a name="input_health_check"></a> [health\_check](#input\_health\_check) | Target group healthcheck path | `string` | n/a | yes |
| <a name="input_internal"></a> [internal](#input\_internal) | Loadbalancer Internal(True or false) | `bool` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | List of Subnets | `list(string)` | n/a | yes |
| <a name="input_target_group_port"></a> [target\_group\_port](#input\_target\_group\_port) | Target group port | `number` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |
| <a name="input_ecr_name"></a> [ecr\_name](#input\_ecr\_name) | value | `string` | n/a | yes |
| <a name="input_assign_public_ip"></a> [assign\_public\_ip](#input\_assign\_public\_ip) | Assign public ip | `bool` | n/a | yes |
| <a name="input_cluster_id"></a> [cluster\_id](#input\_cluster\_id) | ECS Cluster ID | `string` | n/a | yes |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | ECS Task Definition container name | `string` | `null` | no |
| <a name="input_container_port"></a> [container\_port](#input\_container\_port) | ECS Task Definition container port | `string` | `null` | no |
| <a name="input_desired_count"></a> [desired\_count](#input\_desired\_count) | ECS Service desired count | `string` | n/a | yes |
| <a name="input_load_balancer"></a> [load\_balancer](#input\_load\_balancer) | Loadbalancer | `bool` | `false` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | ECS Service name | `string` | n/a | yes |
| <a name="input_service_port"></a> [service\_port](#input\_service\_port) | ECS Service port | `number` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | Subnet list | `list(string)` | n/a | yes |
| <a name="input_target_group_arn"></a> [target\_group\_arn](#input\_target\_group\_arn) | Target Group ARN | `string` | `null` | no |
| <a name="input_task_definition_arn"></a> [task\_definition\_arn](#input\_task\_definition\_arn) | ECS Task Definition ID | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC Id | `string` | n/a | yes |
| <a name="input_ecs_cluster_name"></a> [ecs\_cluster\_name](#input\_ecs\_cluster\_name) | ECS Cluster Name | `string` | n/a | yes |
| <a name="input_policy"></a> [policy](#input\_policy) | Policy JSON | `any` | n/a | yes |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | IAM Policy Name | `string` | n/a | yes |
| <a name="input_role_id"></a> [role\_id](#input\_role\_id) | IAM Role Id | `string` | n/a | yes |
| <a name="input_container_image"></a> [container\_image](#input\_container\_image) | Container Image | `string` | n/a | yes |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Container name | `string` | n/a | yes |
| <a name="input_container_port"></a> [container\_port](#input\_container\_port) | Container Port | `number` | n/a | yes |
| <a name="input_cpu"></a> [cpu](#input\_cpu) | Task definition CPU | `number` | n/a | yes |
| <a name="input_environment_s3_arn"></a> [environment\_s3\_arn](#input\_environment\_s3\_arn) | Environment S3 file ARN | `string` | n/a | yes |
| <a name="input_essential"></a> [essential](#input\_essential) | Container essential | `bool` | n/a | yes |
| <a name="input_log_retention_days"></a> [log\_retention\_days](#input\_log\_retention\_days) | Log retention in days | `number` | n/a | yes |
| <a name="input_memory"></a> [memory](#input\_memory) | Task deifnition memory | `number` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | awslogs region | `string` | n/a | yes |
| <a name="input_task_name"></a> [task\_name](#input\_task\_name) | Task definition name | `string` | n/a | yes |
| <a name="input_private_subnet_1_cidr"></a> [private\_subnet\_1\_cidr](#input\_private\_subnet\_1\_cidr) | Private subnet az1 CIDR | `string` | n/a | yes |
| <a name="input_private_subnet_2_cidr"></a> [private\_subnet\_2\_cidr](#input\_private\_subnet\_2\_cidr) | Private subnet az2 CIDR | `string` | n/a | yes |
| <a name="input_private_subnet_3_cidr"></a> [private\_subnet\_3\_cidr](#input\_private\_subnet\_3\_cidr) | Private subnet az3 CIDR | `string` | n/a | yes |
| <a name="input_proj_name"></a> [proj\_name](#input\_proj\_name) | Project Name | `string` | n/a | yes |
| <a name="input_public_subnet_1_cidr"></a> [public\_subnet\_1\_cidr](#input\_public\_subnet\_1\_cidr) | Public subnet az1 CIDR | `string` | n/a | yes |
| <a name="input_public_subnet_2_cidr"></a> [public\_subnet\_2\_cidr](#input\_public\_subnet\_2\_cidr) | Public subnet az2 CIDR | `string` | n/a | yes |
| <a name="input_public_subnet_3_cidr"></a> [public\_subnet\_3\_cidr](#input\_public\_subnet\_3\_cidr) | Public subnet az3 CIDR | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region | `string` | `"us-east-1"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | VPC CIDR | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_target_group_arn"></a> [target\_group\_arn](#output\_target\_group\_arn) | n/a |
| <a name="output_repository_uri"></a> [repository\_uri](#output\_repository\_uri) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_container_name"></a> [container\_name](#output\_container\_name) | n/a |
| <a name="output_container_port"></a> [container\_port](#output\_container\_port) | n/a |
| <a name="output_role_id"></a> [role\_id](#output\_role\_id) | n/a |
| <a name="output_private_subnet-1_id"></a> [private\_subnet-1\_id](#output\_private\_subnet-1\_id) | n/a |
| <a name="output_private_subnet-2_id"></a> [private\_subnet-2\_id](#output\_private\_subnet-2\_id) | n/a |
| <a name="output_private_subnet-3_id"></a> [private\_subnet-3\_id](#output\_private\_subnet-3\_id) | n/a |
| <a name="output_public_subnet-1_id"></a> [public\_subnet-1\_id](#output\_public\_subnet-1\_id) | n/a |
| <a name="output_public_subnet-2_id"></a> [public\_subnet-2\_id](#output\_public\_subnet-2\_id) | n/a |
| <a name="output_public_subnet-3_id"></a> [public\_subnet-3\_id](#output\_public\_subnet-3\_id) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
