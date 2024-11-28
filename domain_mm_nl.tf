
resource "porkbun_nameservers" "mm_nl" {
  domain = var.MM_NL_DOMAIN
  nameservers = [
    "guy.ns.cloudflare.com",
    "gwen.ns.cloudflare.com"
  ]
}

resource "cloudflare_zone" "mm_nl" {
  zone = var.MM_NL_DOMAIN
}

resource "cloudflare_dns_record" "mm_nl_gmail_cname" {
  zone_id = cloudflare_zone.mm_nl.id
  name = "mail"
  value = "ghs.googlehosted.com"
  type = "CNAME"
  comment = "Gmail Suite CNAME"
  proxied = false
  ttl = 3600
}


resource "cloudflare_dns_record" "mm_nl_gmail_cname" {
  zone_id = cloudflare_zone.mm_nl.id
  name = "mail"
  value = "aspmx.l.google.com"
  type = "CNAME"
  comment = "Gmail Suite MX"
  proxied = false
  ttl = 3600
}

resource "cloudflare_dns_record" "mm_nl_gmail_mx_0" {
  zone_id = cloudflare_zone.mm_nl.id
  name = ""
  value = "smtp.google.com"
  type = "MX"
  comment = "Gmail Suite MX #1"
  ttl = 3600
  priority = 1
}

resource "cloudflare_dns_record" "mm_nl_gmail_mx_1" {
  zone_id = cloudflare_zone.mm_nl.id
  name = ""
  value = "alt1.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #2"
  ttl = 3600
  priority = 5
}

resource "cloudflare_dns_record" "mm_nl_gmail_mx_2" {
  zone_id = cloudflare_zone.mm_nl.id
  name = ""
  value = "alt2.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #3"
  ttl = 3600
  priority = 5
}

resource "cloudflare_dns_record" "mm_nl_gmail_mx_3" {
  zone_id = cloudflare_zone.mm_nl.id
  name = ""
  value = "alt3.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #4"
  ttl = 3600
  priority = 10
}

resource "cloudflare_dns_record" "mm_nl_gmail_mx_4" {
  zone_id = cloudflare_zone.mm_nl.id
  name = ""
  value = "alt4.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #5"
  ttl = 3600
  priority = 10
}

resource "cloudflare_dns_record" "mm_nl_gmail_txt" {
  zone_id = cloudflare_zone.mm_nl.id
  name = ""
  value = "v=spf1 include:_spf.google.com ~all"
  type = "TXT"
  comment = "Gmail Suite TXT"
  ttl = 3600
}

resource "cloudflare_dns_record" "mm_nl_gmail_txt" {
  zone_id = cloudflare_zone.mm_nl.id
  name = ""
  value = "google-site-verification=${var.GOOGLE_SITE_VERIFICATION}"
  type = "TXT"
  comment = "Gmail Suite Verification"
  ttl = 3600
}

resource "cloudflare_dns_record" "mm_nl_gmail_txt" {
  zone_id = cloudflare_zone.mm_nl.id
  name = ""
  value = "v=DKIM1; k=rsa; p=${var.GOOGLE_DOMAIN_KEY}"
  type = "TXT"
  comment = "Gmail Suite DKIM"
  ttl = 3600
}
