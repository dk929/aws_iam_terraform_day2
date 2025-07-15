provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "devops_engineer" {
  name = "devops-engineer"
}

resource "aws_iam_policy" "least_privilege_policy" {
  name        = "LeastPrivilegePolicy"
  description = "Restricts to EC2 read-only"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "ec2:DescribeInstances",
          "ec2:DescribeVolumes"
        ],
        Effect   = "Allow",
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "attach" {
  user       = aws_iam_user.devops_engineer.name
  policy_arn = aws_iam_policy.least_privilege_policy.arn
}
