Refernce: https://medium.com/aws-tip/itimplement-terraform-ci-cd-using-aws-codepipeline-6e092f579fd2


- First We Created S3 bucket and DyanmoDB table for configuring the Terraferom backend. The DynamoDB table is used for state locking and consistency.
- In Terrafor Backend.tf file we mension above remote state backend As S3 bucket
- 
