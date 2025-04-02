
resource "porkbun_domain_nameservers" "flamingo_dev" {
  domain = "flamingo.dev"
  nameservers = [
    "guy.ns.cloudflare.com",
    "gwen.ns.cloudflare.com"
  ]
}

resource "cloudflare_zone" "flamingo_dev" {
  account_id = var.CLOUDFLARE_ME_ID
  zone = "flamingo.dev"
}

resource "cloudflare_record" "flamingo_dev_ditto_cname" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "ditto"
  content = "cname.vercel-dns.com"
  type = "CNAME"
  comment = "Ditto CNAME"
  proxied = false
  ttl = 600
}

resource "cloudflare_record" "flamingo_dev_social_cname" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "social"
  content = "cname.vercel-dns.com"
  type = "CNAME"
  comment = "Social CNAME"
  proxied = false
  ttl = 600
}

resource "cloudflare_record" "flamingo_dev_sweelinck_cname" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "sweelinck"
  content = "cname.vercel-dns.com"
  type = "CNAME"
  comment = "Sweelinck CNAME"
  proxied = false
  ttl = 600
}

# Gmail Suite

resource "cloudflare_record" "flamingo_dev_gmail_cname" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "mail"
  content = "ghs.googlehosted.com"
  type = "CNAME"
  comment = "Gmail Suite CNAME"
  proxied = false
  ttl = 3600
}


resource "cloudflare_record" "flamingo_dev_gmail_aspmx" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "@"
  content = "aspmx.l.google.com"
  type = "CNAME"
  comment = "Gmail Suite ASPMX"
  proxied = false
  ttl = 3600
}

resource "cloudflare_record" "flamingo_dev_gmail_mx_0" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "@"
  content = "smtp.google.com"
  type = "MX"
  comment = "Gmail Suite MX #1"
  ttl = 3600
  priority = 1
}

resource "cloudflare_record" "flamingo_dev_gmail_mx_1" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "@"
  content = "alt1.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #2"
  ttl = 3600
  priority = 5
}

resource "cloudflare_record" "flamingo_dev_gmail_mx_2" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "@"
  content = "alt2.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #3"
  ttl = 3600
  priority = 5
}

resource "cloudflare_record" "flamingo_dev_gmail_mx_3" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "@"
  content = "alt3.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #4"
  ttl = 3600
  priority = 10
}

resource "cloudflare_record" "flamingo_dev_gmail_mx_4" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "@"
  content = "alt4.aspmx.l.google.com"
  type = "MX"
  comment = "Gmail Suite MX #5"
  ttl = 3600
  priority = 10
}

resource "cloudflare_record" "flamingo_dev_gmail_domain_verification" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "google._domainKey"
  content = "google-site-verification=${var.GOOGLE_SITE_VERIFICATION}"
  type = "TXT"
  comment = "Gmail Suite Verification"
  ttl = 3600
}

resource "cloudflare_record" "flamingo_dev_gmail_domain_key" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "google._domainKey"
  content = "${var.GOOGLE_DOMAIN_KEY}"
  type = "TXT"
  comment = "Gmail Suite DKIM"
  ttl = 3600
}

resource "cloudflare_record" "flamingo_dev_vercel_verification" {
  zone_id = cloudflare_zone.flamingo_dev.id
  name = "_vercel"
  content = "vc-domain-verify=${var.GOOGLE_DOMAIN_KEY}"
  type = "TXT"
  comment = "Vercel Domain Verification"
  ttl = 3600
}
