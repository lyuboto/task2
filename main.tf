provider "github" {
  token        = file("/home/lyubo/Desktop/tf_test_repo/task2/.gh_token")
  organization = var.github_org_settings.org_name
}

resource "github_repository" "this" {
  for_each = setunion(
    var.github_org_settings.repos.security_repos,
    var.github_org_settings.repos.ai_repos,
    var.github_org_settings.repos.analytics_repos
  )

  name = each.value
}

resource "github_team" "this" {
  for_each = var.github_org_settings.team_names

  name = each.value
}

resource "github_team_repository" "security_repos" {
  for_each = var.github_org_settings.repos.security_repos

  team_id    = github_team.this["Security"].id
  repository = each.value
}

resource "github_team_repository" "AI_repos" {
  for_each = var.github_org_settings.repos.ai_repos

  team_id    = github_team.this["AI"].id
  repository = each.value
}

resource "github_team_repository" "analytics_repos" {
  for_each = var.github_org_settings.repos.analytics_repos

  team_id    = github_team.this["Analytics"].id
  repository = each.value
}