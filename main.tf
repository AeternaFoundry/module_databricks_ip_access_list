resource "databricks_ip_access_list" "ip_access_lists" {
  for_each = var.ip_access_lists

  ip_addresses = each.value.ip_addresses
  label        = each.value.label
  list_type    = each.value.list_type
  enabled      = each.value.enabled

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

