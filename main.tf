terraform {
  required_providers {
    porkbun = {
      source = "kyswtn/porkbun"
      version = "0.1.2"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

