variable "ip_access_lists" {
  description = <<EOT
Map of ip_access_lists, attributes below
Required:
    - ip_addresses
    - label
    - list_type
Optional:
    - enabled
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    ip_addresses = list(string)
    label        = string
    list_type    = string
    enabled      = optional(bool)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

