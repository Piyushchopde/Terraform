TerraForm Theory: 
 required_version :The required_version parameter in a terraform block is used to specify the minimum version of Terraform that is required to run the configuration.
 
- Data_block : data blocks are used to retrieve data from external sources, such as APIs or databases, and make that data available to your
 Terraform configuration.

 Argument : 
Attribute : 
Terraform state File : This State is used by Terraform to map real world resource to your configuration .tf files keep track of metadata and to improve performance for arge infrastructure 
meta-arument:



Terraform Variables: 3 Types
1) Terraform Input Variables : Serve as paramenter for terraform modules 
2) Terraform Output Variables 
3) Terraform Local Values 

Data Sources: Data Sources allow data to be fetched for use elsewere in terraform configuration 


toset
tomap
splater : legacy and genralized splat operatoor 
for_each :
   *** if you pass map toin for_each then each.key is not equal to each.value 
       if you pass set of string   in for_each then each.key is not equal to each.value ***
*** if you use for_each splat operator not working because splat opratore only output list  **



module: module are main way to package and reuse resoruce configuration with terraform 
local values: 



null resoruce : its doest create real resoreses 
provisioners:
  file provisioners :
   remote exec provisioners:
   local exec provisioners:

speculative plan :

https://developer.hashicorp.com/terraform/cli/config/environment-variables
