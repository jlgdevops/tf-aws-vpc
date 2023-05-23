locals {
  vpc_cidr = "10.1.0.0/16"
}

locals {
  user = "<user>"
  tp   = "terraform-aws-vpc-rename"
}

locals {
  default_tags = {
    Owner = local.user
    TP    = local.tp
  }
}
