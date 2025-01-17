
resource "porkbun_domain_nameservers" "yesimhuman_dev" {
  domain = "yesimhuman.dev"
  nameservers = [
    "curitiba.ns.porkbun.com",
    "fortaleza.ns.porkbun.com",
    "maceio.ns.porkbun.com",
    "salvador.ns.porkbun.com"
  ]
}

resource "porkbun_dns_record" "yesimhuman_dev_github_pages_0" {
  domain = "yesimhuman.dev"
  type = "A"
  content = "185.199.108.153"
}

resource "porkbun_dns_record" "yesimhuman_dev_github_pages_1" {
  domain = "yesimhuman.dev"
  type = "A"
  content = "185.199.109.153"
}

resource "porkbun_dns_record" "yesimhuman_dev_github_pages_2" {
  domain = "yesimhuman.dev"
  type = "A"
  content = "185.199.110.153"
}

resource "porkbun_dns_record" "yesimhuman_dev_github_pages_3" {
  domain = "yesimhuman.dev"
  type = "A"
  content = "185.199.111.153"
}

resource "porkbun_dns_record" "yesimhuman_dev_github_pages_cname" {
  domain = "yesimhuman.dev"
  subdomain = "www"
  type = "CNAME"
  content = "meir.github.io."
}

resource "porkbun_dns_record" "yesimhuman_dev_discord_txt" {
  domain = "yesimhuman.dev"
  subdomain = "_discord"
  type = "TXT"
  content = "dh=afb0d6d404e19ffbbcd0794cfdcbd1c297ae710d"
}
