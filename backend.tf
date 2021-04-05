terraform {
  backend "s3" {
    bucket         = "terraform-backendbucket"
    key            = "iti/dev/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "backend"
  }
}
