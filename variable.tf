variable "description" {
    default = "My test policy"
}
variable "Action" {
    default = "ec2:Describe*"
}
variable "Effect" {
    default = "Allow"
}
variable "Resource" {
    default = "*"
}