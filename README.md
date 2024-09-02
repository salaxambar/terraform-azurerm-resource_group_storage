## Overview

This Terraform module creates an Azure Resource Group and a Storage Account within the specified Resource Group.

## Usage

```hcl
module "resource_group_storage" {
  source = "github.com/your-username/terraform-azurerm-resource_group_storage"

  resource_group_name  = "example-resources"
  location             = "East US"
  storage_account_name = "examplestorageacct"
  account_tier         = "Standard"
  account_replication_type = "LRS"
}

output "storage_account_primary_endpoint" {
  value = module.resource_group_storage.storage_account_primary_endpoint
}

## Inputs

| Name                              | Description                                                        |
|-----------------------------------|--------------------------------------------------------------------|
| `resource_group_name`             | The name of the resource group.                                    |
| `location`                        | The location of the resource group and storage account             |
| `storage_account_name`            | The name of the storage account.                                   |
| `account_tier`                    | The tier of the storage account.                                   |
| `account_replication_type`        | The replication type of the storage account.                       |

## Outputs

| Name                              | Description                                                        |
|-----------------------------------|--------------------------------------------------------------------|
| `resource_group_name`             | The name of the resource group that was created.                   |
| `storage_account_name`            | The name of the storage account that was created.                  |
| `storage_account_primary_endpoint`| The primary endpoint for accessing the storage account.            |
