
provider "cloudflare" {
  api_token = var.CLOUDFLARE_API_TOKEN  
}

resource "cloudflare_account" "me" {
  name = var.CLOUDFLARE_ME
  type = "standard"
}
