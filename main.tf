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
      version = "4.47.0"
    }
    google = {
      source = "hashicorp/google"
      version = "6.16.0"
    }
    grafana = {
      source = "grafana/grafana"
      version = "3.16.0"
    }
  }
}

