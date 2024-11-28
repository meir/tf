
resource "porkbun_nameservers" "yesimhuman_dev" {
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
  name = ""
  type = "A"
  content = "185.199.108.153"
  ttl = 300
  notes = "Github Pages IP #1"
}

resource "porkbun_dns_record" "yesimhuman_dev_github_pages_1" {
  domain = "yesimhuman.dev"
  name = ""
  type = "A"
  content = "185.199.109.153"
  ttl = 300
  notes = "Github Pages IP #2"
}

resource "porkbun_dns_record" "yesimhuman_dev_github_pages_2" {
  domain = "yesimhuman.dev"
  name = ""
  type = "A"
  content = "185.199.110.153"
  ttl = 300
  notes = "Github Pages IP #3"
}

resource "porkbun_dns_record" "yesimhuman_dev_github_pages_3" {
  domain = "yesimhuman.dev"
  name = ""
  type = "A"
  content = "185.199.111.153"
  ttl = 300
  notes = "Github Pages IP #4"
}

resource "porkbun_dns_record" "yesimhuman_dev_github_pages_cname" {
  domain = "yesimhuman.dev"
  name = "www"
  type = "CNAME"
  content = "meir.github.io."
  ttl = 300
  notes = "Github Pages CNAME"
}
