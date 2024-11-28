
resource "porkbun_nameservers" "mm_nl" {
  domain = var.MM_NL_DOMAIN
  nameservers = [
    "guy.ns.cloudflare.com",
    "gwen.ns.cloudflare.com"
  ]
}

resource "cloudflare_zone" "mm_nl" {
  account_id = var.CLOUDFLARE_ME_ID
  zone = var.MM_NL_DOMAIN
}

resource "cloudflare_record" "mm_nl_gmail_cname" {
  zone_id = cloudflare_zone.mm_nl.id
  name = "mail"
  content = "ghs.googlehosted.com"
  type = "CNAME"
  comment = "Gmail Suite CNAME"
  proxied = false
  ttl = 3600
}


resource "cloudflare_record" "mm_nl_gmail_aspmx" {
  zone_id = cloudflare_zone.mm_nl.id
  name = "mail"
  content = "aspmx.l.google.com"
  type = "CNAME"
  comment = "Gmail Suite ASPMX"
  proxied = false
  ttl = 3600
}

resource "cloudflare_record" "mm_nl_gmail_mx_0" {
  zone_id = cloudflare_zone.mm_nl.id
  name = "@"
  content = "smtp.google.com"
  type = "MX"
  comment = "Gmail Suite MX #1"
  ttl = 3600
  priority = 1
}

resource "cloudflare_record" "mm_nl_gmail_mx_1" {
  zone_id = cloudflare_zone.mm_nl.id
  name = "@"
  content = "alt1.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #2"
  ttl = 3600
  priority = 5
}

resource "cloudflare_record" "mm_nl_gmail_mx_2" {
  zone_id = cloudflare_zone.mm_nl.id
  name = "@"
  content = "alt2.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #3"
  ttl = 3600
  priority = 5
}

resource "cloudflare_record" "mm_nl_gmail_mx_3" {
  zone_id = cloudflare_zone.mm_nl.id
  name = "@"
  content = "alt3.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #4"
  ttl = 3600
  priority = 10
}

resource "cloudflare_record" "mm_nl_gmail_mx_4" {
  zone_id = cloudflare_zone.mm_nl.id
  name = "@"
  content = "alt4.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #5"
  ttl = 3600
  priority = 10
}

resource "cloudflare_record" "mm_nl_gmail_domain_verification" {
  zone_id = cloudflare_zone.mm_nl.id
  name = "google._domainkey"
  content = "google-site-verification=${var.GOOGLE_SITE_VERIFICATION}"
  type = "TXT"
  comment = "Gmail Suite Verification"
  ttl = 3600
}

resource "cloudflare_record" "mm_nl_gmail_domain_key" {
  zone_id = cloudflare_zone.mm_nl.id
  name = "@"
  content = "v=DKIM1; k=rsa; p=${var.GOOGLE_DOMAIN_KEY}"
  type = "TXT"
  comment = "Gmail Suite DKIM"
  ttl = 3600
}
