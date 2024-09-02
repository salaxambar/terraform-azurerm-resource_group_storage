output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.this.name
}

output "storage_account_name" {
  description = "The name of the storage account"
  value       = azurerm_storage_account.this.name
}

output "storage_account_primary_endpoint" {
  description = "The primary endpoint of the storage account"
  value       = azurerm_storage_account.this.primary_blob_endpoint
}

