provider "aws" {
    access_key = "mock_access_key"
    secret_key = "mock_secret_key"
    region     = "us-east-1"
    endpoint   = "http://localhost:4566"
}

module "s3_bucket" {
    source = "./modules/s3_bucket"
    bucket_name = var.bucket_name
}

output "bucket_name" {
    value = module.s3_bucket.bucket_name
}
