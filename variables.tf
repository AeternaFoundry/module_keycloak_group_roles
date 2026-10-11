variable "group_roles" {
  description = <<EOT
Map of group_roles, attributes below
Required:
    - group_id
    - realm_id
    - role_ids
Optional:
    - exhaustive
EOT

  type = map(object({
    group_id   = string
    realm_id   = string
    role_ids   = set(string)
    exhaustive = optional(bool)
  }))
}

