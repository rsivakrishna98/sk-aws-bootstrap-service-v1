locals {
  service_name = "sk-aws-bootstrap-service-v1"
  tags = {
    Service   : local.service_name,
    Env       : var.env,
    Provider  : "sk-mycloud",
    ManagedBy : "terraform",
    Stack     : "bootstrap"
  }
}

provider "aws" {
  region = var.region_primary
  default_tags {
    tags = local.tags
  }
}

provider "aws" {
  alias  = "primary"
  region = var.region_primary
  default_tags {
    tags = local.tags
  }
}

provider "aws" {
  alias  = "secondary"
  region = var.region_secondary
  default_tags {
    tags = local.tags
  }
}

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
  default_tags {
    tags = local.tags
  }
}
