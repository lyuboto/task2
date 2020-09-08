provider "github" {
    token = file("/home/lyubo/Desktop/tf_test_repo/task2/.gh_token")
    organization = var.github_org_settings.org_name
}

resource "github_repository" "test_repo" {
    name = var.github_org_settings.repo_name
}

resource "github_team" "teams_in_org" {
    count = length(var.github_org_settings.team_names)
    name = var.github_org_settings.team_names[count.index]
}