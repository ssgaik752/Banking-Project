provider "aws" {
  region = "us-east-1"
}

resource "aws_eks_cluster" "banking_cluster" {
  name     = "banking-eks"
  role_arn = aws_iam_role.eks_role.arn
  ...
}

resource "aws_s3_bucket" "banking_data" {
  bucket = "banking-app-data"
  acl    = "private"
}

