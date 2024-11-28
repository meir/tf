
resource "porkbun_nameservers" "flamingo_dev" {
  domain = "flamingo.dev"
  nameservers = [
    "guy.ns.cloudflare.com",
    "gwen.ns.cloudflare.com"
  ]
}

resource "cloudflare_zone" "flamingo_dev" {
  zone = var.flamingo_dev_DOMAIN
}

resource "cloudflare_dns_record" "flamingo_dev_ditto_cname" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "ditto"
  value = "cname.vercel-dns.com"
  type = "CNAME"
  comment = "Ditto CNAME"
  proxied = false
  ttl = 600
}

resource "cloudflare_dns_record" "flamingo_dev_social_cname" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "social"
  value = "cname.vercel-dns.com"
  type = "CNAME"
  comment = "Social CNAME"
  proxied = false
  ttl = 600
}

resource "cloudflare_dns_record" "flamingo_dev_sweelinck_cname" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "sweelinck"
  value = "cname.vercel-dns.com"
  type = "CNAME"
  comment = "Sweelinck CNAME"
  proxied = false
  ttl = 600
}

# Gmail Suite

resource "cloudflare_dns_record" "flamingo_dev_gmail_cname" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "mail"
  value = "ghs.googlehosted.com"
  type = "CNAME"
  comment = "Gmail Suite CNAME"
  proxied = false
  ttl = 3600
}


resource "cloudflare_dns_record" "flamingo_dev_gmail_aspmx" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "mail"
  value = "aspmx.l.google.com"
  type = "CNAME"
  comment = "Gmail Suite ASPMX"
  proxied = false
  ttl = 3600
}

resource "cloudflare_dns_record" "flamingo_dev_gmail_mx_0" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = ""
  value = "smtp.google.com"
  type = "MX"
  comment = "Gmail Suite MX #1"
  ttl = 3600
  priority = 1
}

resource "cloudflare_dns_record" "flamingo_dev_gmail_mx_1" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = ""
  value = "alt1.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #2"
  ttl = 3600
  priority = 5
}

resource "cloudflare_dns_record" "flamingo_dev_gmail_mx_2" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = ""
  value = "alt2.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #3"
  ttl = 3600
  priority = 5
}

resource "cloudflare_dns_record" "flamingo_dev_gmail_mx_3" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = ""
  value = "alt3.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #4"
  ttl = 3600
  priority = 10
}

resource "cloudflare_dns_record" "flamingo_dev_gmail_mx_4" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = ""
  value = "alt4.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #5"
  ttl = 3600
  priority = 10
}

resource "cloudflare_dns_record" "flamingo_dev_gmail_txt" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = ""
  value = "v=spf1 include:_spf.google.com ~all"
  type = "TXT"
  comment = "Gmail Suite TXT"
  ttl = 3600
}

resource "cloudflare_dns_record" "flamingo_dev_gmail_txt" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = ""
  value = "google-site-verification=${var.GOOGLE_SITE_VERIFICATION}"
  type = "TXT"
  comment = "Gmail Suite Verification"
  ttl = 3600
}

resource "cloudflare_dns_record" "flamingo_dev_gmail_txt" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = ""
  value = "v=DKIM1; k=rsa; p=${var.GOOGLE_DOMAIN_KEY}"
  type = "TXT"
  comment = "Gmail Suite DKIM"
  ttl = 3600
}
