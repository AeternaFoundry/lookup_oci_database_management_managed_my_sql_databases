variable "database_management_managed_my_sql_databases_lookup" {
  description = <<EOT
Map of database_management_managed_my_sql_databases_lookup, attributes below
Required:
    - compartment_id
Optional:
    - filter_by_my_sql_database_type_param
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                       = string
    filter_by_my_sql_database_type_param = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

