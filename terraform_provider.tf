provider "aws" {
  profile = "formation"
  region  = "eu-north-1"
  default_tags {
    tags = local.default_tags
  }
}
