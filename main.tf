resource "google_monitoring_snooze" "monitoring_snoozes" {
  for_each = var.monitoring_snoozes

  display_name = each.value.display_name
  project      = each.value.project

  criteria {
    filter   = each.value.criteria.filter
    policies = each.value.criteria.policies
  }

  interval {
    end_time   = each.value.interval.end_time
    start_time = each.value.interval.start_time
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

