Refernce: https://medium.com/aws-tip/itimplement-terraform-ci-cd-using-aws-codepipeline-6e092f579fd2


- First We Created S3 bucket and DyanmoDB table for configuring the Terraferom backend. The DynamoDB table is used for state locking and consistency.
- In Terraform Backend.tf file we mensition above remote state backend As S3 bucket
- onces remote state is created we have created Repository in codecommite to store code
- Then created S3 bucket and CloudWatch log group to store the pipeline logs
-  Once we create S3 bucket and cloud watch we have created IAM role and policy for the AWS CodeBuild to grant necessary permissions.
-  
