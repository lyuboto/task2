variable "github_org_settings" {
  type = object({
    org_name   = string
    team_names = list(string)
    repo_names = list(string)
  })
}