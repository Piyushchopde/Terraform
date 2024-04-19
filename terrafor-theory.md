
- required_version :The required_version parameter in a terraform block is used to specify the minimum version of Terraform that is required to run the configuration.
 
- Data_block : data blocks are used to retrieve data from external sources, such as APIs or databases, and make that data available to your Terraform configuration.

- Terraform state File : This State is used by Terraform to map real world resource to your configuration .tf files keep track of metadata and to improve performance for arge infrastructure 

Terraform Variables: 3 Types
1) Terraform Input Variables : Serve as paramenter for terraform modules 
2) Terraform Output Variables 
3) Terraform Local Values
   
- splater : legacy and genralized splat operatoor
    
- for_each :
   *** if you pass map to in for_each then each.key is not equal to each.value 
       if you pass set of string   in for_each then each.key is not equal to each.value ***
*** if you use for_each splat operator not working because splat opratore only output list  **
- Modules: Module is main pakage thae resuse  



- null resoruce : Terraform null_resource does not have a state which means it will be executed as soon as you run $ terraform apply command but no state will be saved.
     provisioners:
      file provisioners :
      remote exec provisioners:
      local exec provisioners:

speculative plan :

https://developer.hashicorp.com/terraform/cli/config/environment-variables



Meta-Arguments in Terraform are as follows:

depends_on: Specifies dependencies between resources. It ensures that one resource is created or updated before another resource.
count: Controls resource instantiation by setting the number of instances created based on a given condition or variable.
for_each: Allows creating multiple instances of a resource based on a map or set of strings. Each instance is created with its unique key-value pair.
lifecycle: Defines lifecycle rules for managing resource updates, replacements, and deletions.
provider: Specifies the provider configuration for a resource. It allows selecting a specific provider or version for a resource.
provisioner: Specifies actions to be taken on a resource after creation, such as running scripts or executing commands.
connection: Defines the connection details to a resource, enabling remote execution or file transfers.
variable: Declares input variables that can be provided during Terraform execution.
output: Declares output values that can be displayed after Terraform execution.
locals: Defines local values that can be used within the configuration files.
