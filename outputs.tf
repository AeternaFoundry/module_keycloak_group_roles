output "group_roles_id" {
  description = "Map of id values across all group_roles, keyed the same as var.group_roles except keys with no id are omitted"
  value       = { for k, v in keycloak_group_roles.group_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_roles_exhaustive" {
  description = "Map of exhaustive values across all group_roles, keyed the same as var.group_roles except keys with no exhaustive are omitted"
  value       = { for k, v in keycloak_group_roles.group_roles : k => v.exhaustive if v.exhaustive != null }
}
output "group_roles_group_id" {
  description = "Map of group_id values across all group_roles, keyed the same as var.group_roles except keys with no group_id are omitted"
  value       = { for k, v in keycloak_group_roles.group_roles : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "group_roles_realm_id" {
  description = "Map of realm_id values across all group_roles, keyed the same as var.group_roles except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_group_roles.group_roles : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}
output "group_roles_role_ids" {
  description = "Map of role_ids values across all group_roles, keyed the same as var.group_roles except keys with no role_ids are omitted"
  value       = { for k, v in keycloak_group_roles.group_roles : k => v.role_ids if v.role_ids != null && length(v.role_ids) > 0 }
}

