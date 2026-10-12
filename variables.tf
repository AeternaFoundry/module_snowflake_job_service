variable "job_services" {
  description = <<EOT
Map of job_services, attributes below
Required:
    - compute_pool
    - database
    - name
    - schema
Optional:
    - comment
    - external_access_integrations
    - query_warehouse
    - from_specification (block):
        - file (optional)
        - path (optional)
        - stage (optional)
        - text (optional)
    - from_specification_template (block):
        - file (optional)
        - path (optional)
        - stage (optional)
        - text (optional)
        - using (required, block):
            - key (required)
            - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    compute_pool                 = string
    database                     = string
    name                         = string
    schema                       = string
    comment                      = optional(string)
    external_access_integrations = optional(set(string))
    query_warehouse              = optional(string)
    from_specification = optional(object({
      file  = optional(string)
      path  = optional(string)
      stage = optional(string)
      text  = optional(string)
    }))
    from_specification_template = optional(object({
      file  = optional(string)
      path  = optional(string)
      stage = optional(string)
      text  = optional(string)
      using = list(object({
        key   = string
        value = string
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.job_services : (
        v.from_specification_template == null || (length(v.from_specification_template.using) >= 1)
      )
    ])
    error_message = "Each using list must contain at least 1 items"
  }
}

