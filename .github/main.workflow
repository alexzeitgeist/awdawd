workflow "New workflow" {
  on = "push"
  resolves = ["new-action"]
}

action "new-action" {
  uses = "ShaunLWM/action-join@master"
  secrets = [
    "API_KEY",
    "DEVICE_ID",
  ]
  env = {
    TITLE = "Build Complete"
    TEXT = "Your project has been built."
  }
}
