terraform {
  backend "s3" {
    bucket = "ebs-rajni" 
    key    = "ec2.tfstate" 
    region = "ap-south-1"
    #dynamodb_table = "ebs_volume-Rajni-table"  
  }
}