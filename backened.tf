terraform {
    backend "s3"{
        bucket="ajay-tf-bucket"
        key="terraform.tfstate"
        region="ap-south-1"
        dynamodb_table = "ajay-tf-table"
    }
}