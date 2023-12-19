# resource "aws_iam_group_membership" "team" {
#   name = "tf-testing-group-membership"

#   users = [
#     aws_iam_user.lb.name,
#     aws_iam_user.lb2.name,
#   ]

#   group = aws_iam_group.developers.name
# }