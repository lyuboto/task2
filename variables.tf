variable "github_org_settings" {
    type = object ({
        repo_name = string
        org_name = string
        team_names = list(string)
    })
}