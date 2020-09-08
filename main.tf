provider "github" {
  token        = file("/home/lyubo/Desktop/tf_test_repo/task2/.gh_token")
  organization = var.github_org_settings.org_name
}

resource "github_repository" "repos" {
  count = length(var.github_org_settings.repo_names)
  name  = var.github_org_settings.repo_names[count.index]
}

resource "github_team" "teams_in_org" {
  count = length(var.github_org_settings.team_names)
  name  = var.github_org_settings.team_names[count.index]
}

resource "github_team_repository" "team_repos" {
  count      = length(var.github_org_settings.repo_names)
  team_id    = github_team.teams_in_org[count.index].id
  repository = github_repository.repos[count.index].name
}