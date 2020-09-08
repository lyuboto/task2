provider "github" {
    token = data.template_file.token.template
    organization = "tf-exmp"
}

data "template_file" "token" {
    template = file("/home/lyubo/Desktop/tf_test_repo/task2/.gh_token")
}
resource "github_repository" "test_repo" {
    name = "example_repo"
}