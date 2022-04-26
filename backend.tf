terraform {
  backend "s3"{
     bucket="ceq-test-buck-tfstate"
      key="rajniebs.tfstate"
      region="us-east-1"
  }
 
}

