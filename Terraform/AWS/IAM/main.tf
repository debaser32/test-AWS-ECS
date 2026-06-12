resource "aws_iam_user" "iam_user" {
  name = var.username

  tags = {
    managed_by = "Terraform"
  }
}

resource "aws_iam_access_key" "credentials" {
  user = aws_iam_user.iam_user.name
}

data "aws_iam_policy_document" "iam_policy" {
  statement {
    effect    = "Allow"
    actions   = ["ec2:Describe*"]
    resources = ["*"]
  }
}

resource "aws_iam_user_policy" "name" {
  name   = var.policy_name
  user   = aws_iam_user.iam_user.name
  policy = data.aws_iam_policy_document.iam_policy.json
}