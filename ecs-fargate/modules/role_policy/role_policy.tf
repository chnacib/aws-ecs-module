resource "aws_iam_role_policy" "main" {
  name = var.policy_name
  role = var.role_id
  policy = var.policy
}
