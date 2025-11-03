
resource "porkbun_domain_nameservers" "centron_eu" {
  domain = "centron.eu"
  nameservers = [
    "curitiba.ns.porkbun.com",
    "fortaleza.ns.porkbun.com",
    "maceio.ns.porkbun.com",
    "salvador.ns.porkbun.com"
  ]
}

resource "porkbun_domain_nameservers" "centrontest_nl" {
  domain = "centrontest.nl"
  nameservers = [
    "curitiba.ns.porkbun.com",
    "fortaleza.ns.porkbun.com",
    "maceio.ns.porkbun.com",
    "salvador.ns.porkbun.com"
  ]
}

resource "porkbun_dns_record" "centrontest_nl_github_pages_0" {
  domain = "centrontest.nl"
  type = "A"
  content = "185.199.108.153"
}

resource "porkbun_dns_record" "centrontest_nl_github_pages_1" {
  domain = "centrontest.nl"
  type = "A"
  content = "185.199.109.153"
}

resource "porkbun_dns_record" "centrontest_nl_github_pages_2" {
  domain = "centrontest.nl"
  type = "A"
  content = "185.199.110.153"
}

resource "porkbun_dns_record" "centrontest_nl_github_pages_3" {
  domain = "centrontest.nl"
  type = "A"
  content = "185.199.111.153"
}

resource "porkbun_dns_record" "centrontest_nl_github_pages_cname" {
  domain = "centrontest.nl"
  subdomain = "www"
  type = "CNAME"
  content = "centrontest.nl."
}

resource "porkbun_dns_record" "centron_eu_github_pages_cname" {
  domain = "centron.eu"
  subdomain = ""
  type = "CNAME"
  content = "centrontest.nl."
}

resource "porkbun_dns_record" "www_centron_eu_github_pages_cname" {
  domain = "centron.eu"
  subdomain = "www"
  type = "CNAME"
  content = "centron-eu.github.io."
}

# email - Zoho Mail

resource "porkbun_dns_record" "centrontest_nl_zoho_verification" {
  domain = "centrontest.nl"
  content = "v=spf1 include:zohomail.eu ~all"
  type = "TXT"
  ttl = 3600
}

resource "porkbun_dns_record" "centrontest_nl_zoho_mail_1" {
  domain = "centrontest.nl"
  content = "mx.zoho.eu"
  type = "MX"
  ttl = 3600
  priority = 10
}

resource "porkbun_dns_record" "centrontest_nl_zoho_mail_2" {
  domain = "centrontest.nl"
  content = "mx2.zoho.eu"
  type = "MX"
  ttl = 3600
  priority = 20
}

resource "porkbun_dns_record" "centrontest_nl_zoho_mail_3" {
  domain = "centrontest.nl"
  content = "mx3.zoho.eu"
  type = "MX"
  ttl = 3600
  priority = 50
}

resource "porkbun_dns_record" "centrontest_nl_zoho_dkim" {
  domain = "centrontest.nl"
  subdomain = "dkim._domainkey"
  content = "${var.DKIM_CENTRON}"
  type = "TXT"
  ttl = 3600
}
