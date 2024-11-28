
provider "cloudflare" {
  api_token = var.CLOUDFLARE_API_TOKEN  
}

import {
  to = cloudflare_account.me
  id = var.CLOUDFLARE_ME_ID
}

resource "cloudflare_account" "me" {
  name = var.CLOUDFLARE_ME
  type = "standard"
}
