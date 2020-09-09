github_org_settings = {
  org_name        = "tf-exmp"
  team_names      = ["Security", "AI", "Analytics"]
  security_repos  = ["Security_repo_prod", "Security_repo_stage"]
  AI_repos        = ["AI_repo_prod", "AI_repo_stage", "AI_repo_dev"]
  analytics_repos = ["Analytics_repo_prod"]
}

repos = {
  sec_rep = ["Security_repo_prod", "Security_repo_stage"]
  ai_rep  = ["AI_repo_prod", "AI_repo_stage", "AI_repo_dev"]
  an_rep  = ["Analytics_repo_prod"]
}