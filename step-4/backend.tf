terraform {
  backend "s3" {
    bucket = "uniq-name-of-bucket"
    key = "uniq-key-for-your-bucket"
    region = "your-region"
  }
}
