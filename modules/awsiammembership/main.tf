resource "aws_iam_group_membership" "groupmembership" {
    name = "groupmembership"
    users = [ var.membershipusername ]
    group = var.membershipgroupname  
}