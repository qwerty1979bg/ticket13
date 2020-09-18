terraform {
  required_providers {
    freeipa = {
      source = "freeipa"
      #      source  = "-/freeipa"
      #      source  = "camptocamp/freeipa"
      version = "0.6.0"
    }
  }
}

output "empty" {
  value = null
}

provider freeipa {
  #  host = "demo1.freeipa.org"
  host     = "ipa.demo1.freeipa.org"
  username = "admin" # or set $FREEIPA_USERNAME
  password = "Secret123"
  insecure = true
}

resource freeipa_host "foo" {
  fqdn        = "foo.example.test"
  description = "This is my foo host"
  force       = true
  random      = true
}

resource freeipa_host "bar" {
  fqdn         = "bar.example.test"
  userpassword = "abcde"
  force        = true
}
