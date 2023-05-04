terraform {
   backend "s3" {
     bucket = "amara-terraform-state"
     key    = "terraform.tfstate.dev"
     region = "ap-south-1"
   }
}
#terraform {
   #backend "s3" {
    # bucket = "amara-terraform-state"

      #key    = "terraform.tfstate.prod"

      #region = "ap-south-1"

     #}

  #}

#uncomment the above code after creating entire terraform configuration using terraform apply command.

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = "newsowjiterraform-state-max"
  versioning_configuration {
    status = "Enabled"
  }
}
