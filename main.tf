resource "keycloak_group_roles" "group_roles" {
  for_each = var.group_roles

  group_id   = each.value.group_id
  realm_id   = each.value.realm_id
  role_ids   = each.value.role_ids
  exhaustive = each.value.exhaustive
}

