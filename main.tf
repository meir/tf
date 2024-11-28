terraform {
  required_version = "1.10.0"

  cloud {
    organization = "flamingo-dev"

    workspaces {
      name = "tf"
    }
  }

  required_providers {
    porkbun = {
      source = "kyswtn/porkbun"
      version = "0.1.2"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "5.0.0-alpha1"
    }
  }
}

