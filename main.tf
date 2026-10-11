data "oci_database_management_managed_my_sql_databases" "database_management_managed_my_sql_databases_lookup" {
  for_each = var.database_management_managed_my_sql_databases_lookup

  compartment_id                       = each.value.compartment_id
  filter_by_my_sql_database_type_param = each.value.filter_by_my_sql_database_type_param

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

