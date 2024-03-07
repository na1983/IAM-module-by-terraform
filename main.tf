
resource "aws_iam_policy" "policy" {
  name        = "test_policy"
  path        = "/"
  description = var.description

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = var.Action
        Effect   = var.Effect
        Resource = var.Resource
      },
    ]
  })
}