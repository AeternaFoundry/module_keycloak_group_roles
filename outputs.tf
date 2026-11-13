output "group_roles_id" {
  description = "Map of id values across all group_roles, keyed the same as var.group_roles"
  value       = { for k, v in keycloak_group_roles.group_roles : k => v.id }
}
output "group_roles_exhaustive" {
  description = "Map of exhaustive values across all group_roles, keyed the same as var.group_roles"
  value       = { for k, v in keycloak_group_roles.group_roles : k => v.exhaustive }
}
output "group_roles_group_id" {
  description = "Map of group_id values across all group_roles, keyed the same as var.group_roles"
  value       = { for k, v in keycloak_group_roles.group_roles : k => v.group_id }
}
output "group_roles_realm_id" {
  description = "Map of realm_id values across all group_roles, keyed the same as var.group_roles"
  value       = { for k, v in keycloak_group_roles.group_roles : k => v.realm_id }
}
output "group_roles_role_ids" {
  description = "Map of role_ids values across all group_roles, keyed the same as var.group_roles"
  value       = { for k, v in keycloak_group_roles.group_roles : k => v.role_ids }
}

