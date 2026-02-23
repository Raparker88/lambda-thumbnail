
# State file stored in S3, locking handled by DynamoDB

terraform {
  backend "s3" {
    bucket         = "rock-of-ages-terraform-state-rap"  # You'll create this bucket
    key            = "lambda-thumbnail/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "rock-of-ages-terraform-locks"  # You'll create this table
    encrypt        = true
  }
}