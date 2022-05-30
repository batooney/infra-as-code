variable "region" {
  default     = "us-west-2"
  description = "AWS region"
}

variable "map_accounts" {
  description = "Add AWS Accounts to add to the aws-auth configmap"
  type        = list(string)

  default = [
    "691619410638"
  ]
}

variable "map_roles" {
  description = "Add IAM roles to add to the aws-auth configmap"
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))
  default = []
}

variable "map_users" {
  description = "AWS Users we can add to Kubernetes"
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      userarn  = "arn:aws:iam::691619410638:user/aviral"
      username = "aviral"
      groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::691619410638:user/aakash"
      username = "aakash"
      groups   = ["system:masters"]
    },
  ]
}
