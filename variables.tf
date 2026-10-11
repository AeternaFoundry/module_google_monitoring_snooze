variable "monitoring_snoozes" {
  description = <<EOT
Map of monitoring_snoozes, attributes below
Required:
    - display_name
    - criteria (block):
        - filter (optional)
        - policies (optional)
    - interval (block):
        - end_time (required)
        - start_time (optional)
Optional:
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name = string
    project      = optional(string)
    criteria = object({
      filter   = optional(string)
      policies = optional(list(string))
    })
    interval = object({
      end_time   = string
      start_time = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

