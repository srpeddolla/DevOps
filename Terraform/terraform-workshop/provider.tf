terraform {
  required_providers {
    github = {
        source = "integrations/github"
        version = "5.0"
    }
  }
}

# Configuring the github token
provider "github" {
  token = ""
}
