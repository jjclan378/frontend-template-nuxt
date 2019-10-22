terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "terraform-state-storage-ACCOUNTID"
    dynamodb_table = "terraform-state-lock-ACCOUNTID"
    key            = "APPLICATION-NAME/terraform.tfstate"
    region         = "us-west-2"
  }
}
