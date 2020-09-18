terraform {
  #   required_version = "= 0.12.29"
  required_version = "= 0.13.03"
  required_providers {
    freeipa = {
      #      source = "-/freeipa"
      source  = "camptocamp/freeipa"
      version = "0.6.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "2.1.2"
    }

  }
}

#output "empty" {
#  value = null
#  value = "kor3"
#}

# This adds a "no op" resource, to make sure the state would be applied
#resource null_resource "no_op" {
#}

# Add another "no op" resource, to make sure the state would be applied
#resource null_resource "no_op2" {
#}

provider freeipa {
  #  host = "demo1.freeipa.org"
  host     = "ipa.demo1.freeipa.org"
  username = "admin" # or set $FREEIPA_USERNAME
  password = "Secret123"
  insecure = true
}

resource freeipa_host "foo" {
  fqdn        = "foo2.example.test"
  description = "This is my foo host"
  force       = true
  random      = true
}

#resource freeipa_host "bar" {
#  fqdn         = "bar.example.test"
#  userpassword = "abcde"
#  force        = true
#}
