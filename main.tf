terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  cloud {
    organization = "example-org-2f5de9"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}
