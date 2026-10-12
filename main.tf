resource "snowflake_job_service" "job_services" {
  for_each = var.job_services

  compute_pool                 = each.value.compute_pool
  database                     = each.value.database
  name                         = each.value.name
  schema                       = each.value.schema
  comment                      = each.value.comment
  external_access_integrations = each.value.external_access_integrations
  query_warehouse              = each.value.query_warehouse

  dynamic "from_specification" {
    for_each = each.value.from_specification != null ? [each.value.from_specification] : []
    content {
      file  = from_specification.value.file
      path  = from_specification.value.path
      stage = from_specification.value.stage
      text  = from_specification.value.text
    }
  }

  dynamic "from_specification_template" {
    for_each = each.value.from_specification_template != null ? [each.value.from_specification_template] : []
    content {
      file  = from_specification_template.value.file
      path  = from_specification_template.value.path
      stage = from_specification_template.value.stage
      text  = from_specification_template.value.text
      dynamic "using" {
        for_each = from_specification_template.value.using
        content {
          key   = using.value.key
          value = using.value.value
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

