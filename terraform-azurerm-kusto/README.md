# terraform-azurerm-kusto
-------------

Terraform code to create the following Azure Kusto infrastructure - also known as Azure Data Explorer (ADX):

- an ADX Cluster. 
- an ADX Database.
- EventHub Infrastructure - EventHub namespace, EventHub, EventHub Consumer Group, EventHub Data Connection

NOTE: due to issues with the provider the Azure Log Analytics data export rule is created manually via AZ CLI at this time.

Requires Terraform v0.14.7 and utilises HCL2 syntax.

## Deployment
-------------

```
cd terraform
```

Under the `terraform` directory there is a subdirectory - `prd` - which represents the subscription in which the ADX Cluster and Database are hosted within the UK HO PRD Azure Tenant.

Change to the `prd` subdirectory and then **ensure the correct AZ subscription is selected.**

Again - this will be `prd`. AZ subscriptions can be selected as follows using the Azure CLI.

For the `prd` subscription: 

```
prd=$(az account list --query "[?contains(@.name, '<SUBSCRIPTION>')==\`true\`].id" -o tsv)
```

Then switch to the subscription as follows:

`az account set --subscription $prd` 

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
