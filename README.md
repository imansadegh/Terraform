# Terraform
## How can i install Terraform?
### MacOs Homebrew
```
brew tap hashicorp/tap
```
```
brew install terraform
```
## Important Commands in Terraform
with this command you can initialize of terraform- when you write this command , one folder with name ".terraform" create for your project
```
terraform init
```

with this command you remove everything that we use in terraform
```
terraform destroy
```

with this command you plan that you want
```
terraform plan
```
with this command you can apply
```
terraform apply
```
You decided to start IaC and run terraform in the middle of project, you need to use this command to import the exist machines or resource.
```
terraform import XXXX
```

```
terraform fmt
```
```
terraform validate
```

terraform state list

terraform state show

terraform state rm

terraform refresh

