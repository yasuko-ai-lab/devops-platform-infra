terraform {
  backend "s3" {
    bucket         = "devops-platform-infra-tfstate-983145326704"
    key            = "devops-platform-infra/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}