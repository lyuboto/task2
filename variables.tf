variable "github_org_settings" {
  type = object({
    org_name   = string
    team_names = set(string)
    repos = object({
      security_repos  = set(string)
      ai_repos        = set(string)
      analytics_repos = set(string)
    })
  })
}