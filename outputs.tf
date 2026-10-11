output "monitoring_snoozes_id" {
  description = "Map of id values across all monitoring_snoozes, keyed the same as var.monitoring_snoozes except keys with no id are omitted"
  value       = { for k, v in google_monitoring_snooze.monitoring_snoozes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitoring_snoozes_criteria" {
  description = "Map of criteria values across all monitoring_snoozes, keyed the same as var.monitoring_snoozes except keys with no criteria are omitted"
  value       = { for k, v in google_monitoring_snooze.monitoring_snoozes : k => one(v.criteria) if v.criteria != null && length(v.criteria) > 0 }
}
output "monitoring_snoozes_display_name" {
  description = "Map of display_name values across all monitoring_snoozes, keyed the same as var.monitoring_snoozes except keys with no display_name are omitted"
  value       = { for k, v in google_monitoring_snooze.monitoring_snoozes : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "monitoring_snoozes_interval" {
  description = "Map of interval values across all monitoring_snoozes, keyed the same as var.monitoring_snoozes except keys with no interval are omitted"
  value       = { for k, v in google_monitoring_snooze.monitoring_snoozes : k => one(v.interval) if v.interval != null && length(v.interval) > 0 }
}
output "monitoring_snoozes_name" {
  description = "Map of name values across all monitoring_snoozes, keyed the same as var.monitoring_snoozes except keys with no name are omitted"
  value       = { for k, v in google_monitoring_snooze.monitoring_snoozes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "monitoring_snoozes_project" {
  description = "Map of project values across all monitoring_snoozes, keyed the same as var.monitoring_snoozes except keys with no project are omitted"
  value       = { for k, v in google_monitoring_snooze.monitoring_snoozes : k => v.project if v.project != null && length(v.project) > 0 }
}

