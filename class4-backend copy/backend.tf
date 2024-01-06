terraform {
  backend "s3" {
    bucket = "hello-elima"
    key    = "ohio/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "lock-state"
    
    }
}