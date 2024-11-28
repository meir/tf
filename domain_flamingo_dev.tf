
resource "porkbun_nameservers" "flamingo_dev" {
  domain = "flamingo.dev"
  nameservers = [
    "guy.ns.cloudflare.com",
    "gwen.ns.cloudflare.com"
  ]
}
