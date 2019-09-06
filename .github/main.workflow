workflow "New workflow" {
  on = "push"
  resolves = ["Pushover", "Join"]
}

action "Pushover" {
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

action "Join" {
  uses = "ShaunLWM/action-join@master"
  secrets = ["DEVICE_ID", "API_KEY"]
  env = {
    TITLE = "Build Complete"
    TEXT = "Your project has been built."
  }
}
