terraform {
    backend "s3" {
        encrypt = true
        bucket = "aws-cicd-ppline"
        dynamodb_table = "tf-state-lock-dynamo"
        key = "terraform-tfstate"
        region = "us-east-1"
      
    } 
}