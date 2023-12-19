resource "aws_iam_user" "lb1" {
  name = "Elima"
}

resource "aws_iam_user" "lb2" {
  name = "kaizen"
}

resource "aws_iam_user" "lb3" {
  name = "Hello"
}

resource "aws_iam_user" "lb4" {
  name = "World"
}

resource "aws_iam_group" "group1" {
  name = "DevOps"
}

resource "aws_iam_group_membership" "group1" {
  name = "DevOps"

  users = [
    aws_iam_user.lb1.name,
    aws_iam_user.lb2.name,
  ]

  group = aws_iam_group.group1.name
}

resource "aws_iam_group" "group2" {
  name = "QA"
}

resource "aws_iam_group_membership" "group2" {
  name = "QA"

  users = [
    aws_iam_user.lb3.name,
    aws_iam_user.lb4.name,
  ]

  group = aws_iam_group.group2.name
}


output resource_Elima{
    value = aws_iam_user.lb1
}

output resource_Kaizen {
    value = aws_iam_user.lb2.unique_id
}

resource "aws_iam_user" "lb5" {
  name = "admin"
}