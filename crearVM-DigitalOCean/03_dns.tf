# Creamos un dominio nuevo

resource "digitalocean_domain" "pablokbs-A" {
  name = "pablokbs-A.com"
}

# Add a record to the domain
resource "digitalocean_record" "www" {
  domain = "${digitalocean_domain.pablokbs-A.name}"
  type   = "A"
  name   = "pelado"
  ttl    = "10"
  value  = "${digitalocean_droplet.web.ipv4_address}"
}

