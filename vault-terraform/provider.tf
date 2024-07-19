terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }

    vault {
        source = "hashicorp/vault"
        version = "~> 4.0"
    }
  }
}

provider "vault" {
  address = "https://google.com"
  auth_login {
    path = "auth/userpass/login/${var.vault_username}"
    parameters = {
        password = var.vault_password
    }
  }
}

terraform {
  backend "s3" {
    bucket = "srpeddollas"
    key = "key/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-lock-srpeddolladb"
    encrypt = true   
    encrypt = true
  }
}

provider "aws" {
  region = us-east-1
}