variable "github_org_settings" {
  type = object({
    org_name        = string
    team_names      = set(string)
    security_repos  = set(string)
    AI_repos        = set(string)
    analytics_repos = set(string)
  })
}

variable "repos" {
  type = object({
    sec_rep = set(string)
    ai_rep  = set(string)
    an_rep  = set(string)
  })
}