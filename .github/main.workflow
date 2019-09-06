workflow "New workflow" {
  on = "push"
  resolves = ["new-action"]
}

action "new-action" {
  uses = "maddox/actions/pushover@master"
  secrets = [
    "USER_KEY",
    "APP_TOKEN",
  ]
  env = {
    TITLE = "Build Complete"
    MESSAGE = "Your container has been built and verified."
    URL = "https://your.builddetails.com/builds/23212"
    URL_TITLE = "Build Details"
    SOUND = "magic"
    PRIORITY = "1"
  }
}
