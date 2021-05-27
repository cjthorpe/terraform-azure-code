# terraform-azurebastion
-------------

Terraform code to create an Azure Bastion through which Azure DevTest lab VMs can be accessed via browser.

Requires Terraform v0.14.7 and utilises HCL2 syntax.

## Deployment
-------------

```
cd terraform
```

Under the `terraform` directory there is a subdirectory - `stg` - which represents the subscription in which the Bastion will be created within the Azure Tenant.

Change to the `stg` subdirectory and then **ensure the correct AZ subscription is selected.**

Again - this will be `stg`. AZ subscriptions can be selected as follows using the Azure CLI.

For the `stg` subscription: 

```
stg=$(az account list --query "[?contains(@.name, '<SUBSCRIPTION NAME>')==\`true\`].id" -o tsv)
```

Then switch to the subscription as follows:

`az account set --subscription $stg` 

Once the appropriate Azure subscription has been selected initialise the modules.

```
terraform init
```

Check for changes / errors.

```
terraform plan
```

Execute the deployment.

```
terraform apply
```
