output "Letter" {
  description = "If there is an even number of teams created, return a. If there is an odd number of teams created, return b"
  value       = length(var.github_org_settings.team_names) % 2 == 0 ? "a" : "b"
}

output "Clone_URLs" {
  value = [for url in github_repository.this : url.http_clone_url]
}