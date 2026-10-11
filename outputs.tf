output "ip_access_lists_id" {
  description = "Map of id values across all ip_access_lists, keyed the same as var.ip_access_lists except keys with no id are omitted"
  value       = { for k, v in databricks_ip_access_list.ip_access_lists : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ip_access_lists_enabled" {
  description = "Map of enabled values across all ip_access_lists, keyed the same as var.ip_access_lists except keys with no enabled are omitted"
  value       = { for k, v in databricks_ip_access_list.ip_access_lists : k => v.enabled if v.enabled != null }
}
output "ip_access_lists_ip_addresses" {
  description = "Map of ip_addresses values across all ip_access_lists, keyed the same as var.ip_access_lists except keys with no ip_addresses are omitted"
  value       = { for k, v in databricks_ip_access_list.ip_access_lists : k => v.ip_addresses if v.ip_addresses != null && length(v.ip_addresses) > 0 }
}
output "ip_access_lists_label" {
  description = "Map of label values across all ip_access_lists, keyed the same as var.ip_access_lists except keys with no label are omitted"
  value       = { for k, v in databricks_ip_access_list.ip_access_lists : k => v.label if v.label != null && length(v.label) > 0 }
}
output "ip_access_lists_list_type" {
  description = "Map of list_type values across all ip_access_lists, keyed the same as var.ip_access_lists except keys with no list_type are omitted"
  value       = { for k, v in databricks_ip_access_list.ip_access_lists : k => v.list_type if v.list_type != null && length(v.list_type) > 0 }
}
output "ip_access_lists_provider_config" {
  description = "Map of provider_config values across all ip_access_lists, keyed the same as var.ip_access_lists except keys with no provider_config are omitted"
  value       = { for k, v in databricks_ip_access_list.ip_access_lists : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

