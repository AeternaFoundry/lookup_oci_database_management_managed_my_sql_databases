output "database_management_managed_my_sql_databases_lookup_id" {
  description = "Map of id values across all database_management_managed_my_sql_databases_lookup, keyed the same as var.database_management_managed_my_sql_databases_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_management_managed_my_sql_databases.database_management_managed_my_sql_databases_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_management_managed_my_sql_databases_lookup_compartment_id" {
  description = "Map of compartment_id values across all database_management_managed_my_sql_databases_lookup, keyed the same as var.database_management_managed_my_sql_databases_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_database_management_managed_my_sql_databases.database_management_managed_my_sql_databases_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_management_managed_my_sql_databases_lookup_filter" {
  description = "Map of filter values across all database_management_managed_my_sql_databases_lookup, keyed the same as var.database_management_managed_my_sql_databases_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_management_managed_my_sql_databases.database_management_managed_my_sql_databases_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_management_managed_my_sql_databases_lookup_filter_by_my_sql_database_type_param" {
  description = "Map of filter_by_my_sql_database_type_param values across all database_management_managed_my_sql_databases_lookup, keyed the same as var.database_management_managed_my_sql_databases_lookup except keys with no filter_by_my_sql_database_type_param are omitted"
  value       = { for k, v in data.oci_database_management_managed_my_sql_databases.database_management_managed_my_sql_databases_lookup : k => v.filter_by_my_sql_database_type_param if v.filter_by_my_sql_database_type_param != null && length(v.filter_by_my_sql_database_type_param) > 0 }
}
output "database_management_managed_my_sql_databases_lookup_managed_my_sql_database_collection" {
  description = "Map of managed_my_sql_database_collection values across all database_management_managed_my_sql_databases_lookup, keyed the same as var.database_management_managed_my_sql_databases_lookup except keys with no managed_my_sql_database_collection are omitted"
  value       = { for k, v in data.oci_database_management_managed_my_sql_databases.database_management_managed_my_sql_databases_lookup : k => v.managed_my_sql_database_collection if v.managed_my_sql_database_collection != null && length(v.managed_my_sql_database_collection) > 0 }
}

