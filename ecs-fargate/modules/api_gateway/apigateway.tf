resource "aws_api_gateway_rest_api" "main" {
  name = var.name

}


resource "aws_api_gateway_vpc_link" "main" {
  name        = "${var.name}-link"
  description = "${var.name}-link"
  target_arns = var.nlb_arn

  depends_on = [
    aws_api_gateway_rest_api.main
  ]

}

output "id" {
    value = aws_api_gateway_rest_api.main.id
  
}

output "root_resource_id" {
    value = aws_api_gateway_rest_api.main.root_resource_id
  
}

output "connection_id" {
  value = aws_api_gateway_vpc_link.main.id
  
}

