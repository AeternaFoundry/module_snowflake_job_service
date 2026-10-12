output "job_services_id" {
  description = "Map of id values across all job_services, keyed the same as var.job_services except keys with no id are omitted"
  value       = { for k, v in snowflake_job_service.job_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "job_services_comment" {
  description = "Map of comment values across all job_services, keyed the same as var.job_services except keys with no comment are omitted"
  value       = { for k, v in snowflake_job_service.job_services : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "job_services_compute_pool" {
  description = "Map of compute_pool values across all job_services, keyed the same as var.job_services except keys with no compute_pool are omitted"
  value       = { for k, v in snowflake_job_service.job_services : k => v.compute_pool if v.compute_pool != null && length(v.compute_pool) > 0 }
}
output "job_services_database" {
  description = "Map of database values across all job_services, keyed the same as var.job_services except keys with no database are omitted"
  value       = { for k, v in snowflake_job_service.job_services : k => v.database if v.database != null && length(v.database) > 0 }
}
output "job_services_describe_output" {
  description = "Map of describe_output values across all job_services, keyed the same as var.job_services except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_job_service.job_services : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "job_services_external_access_integrations" {
  description = "Map of external_access_integrations values across all job_services, keyed the same as var.job_services except keys with no external_access_integrations are omitted"
  value       = { for k, v in snowflake_job_service.job_services : k => v.external_access_integrations if v.external_access_integrations != null && length(v.external_access_integrations) > 0 }
}
output "job_services_from_specification" {
  description = "Map of from_specification values across all job_services, keyed the same as var.job_services except keys with no from_specification are omitted"
  value       = { for k, v in snowflake_job_service.job_services : k => one(v.from_specification) if v.from_specification != null && length(v.from_specification) > 0 }
}
output "job_services_from_specification_template" {
  description = "Map of from_specification_template values across all job_services, keyed the same as var.job_services except keys with no from_specification_template are omitted"
  value       = { for k, v in snowflake_job_service.job_services : k => one(v.from_specification_template) if v.from_specification_template != null && length(v.from_specification_template) > 0 }
}
output "job_services_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all job_services, keyed the same as var.job_services except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_job_service.job_services : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "job_services_name" {
  description = "Map of name values across all job_services, keyed the same as var.job_services except keys with no name are omitted"
  value       = { for k, v in snowflake_job_service.job_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "job_services_query_warehouse" {
  description = "Map of query_warehouse values across all job_services, keyed the same as var.job_services except keys with no query_warehouse are omitted"
  value       = { for k, v in snowflake_job_service.job_services : k => v.query_warehouse if v.query_warehouse != null && length(v.query_warehouse) > 0 }
}
output "job_services_schema" {
  description = "Map of schema values across all job_services, keyed the same as var.job_services except keys with no schema are omitted"
  value       = { for k, v in snowflake_job_service.job_services : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "job_services_service_type" {
  description = "Map of service_type values across all job_services, keyed the same as var.job_services except keys with no service_type are omitted"
  value       = { for k, v in snowflake_job_service.job_services : k => v.service_type if v.service_type != null && length(v.service_type) > 0 }
}
output "job_services_show_output" {
  description = "Map of show_output values across all job_services, keyed the same as var.job_services except keys with no show_output are omitted"
  value       = { for k, v in snowflake_job_service.job_services : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}

