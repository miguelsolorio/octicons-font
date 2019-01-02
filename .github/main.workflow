workflow "Build files on push" {
  on = "push"
  resolves = ["Build"]
}

action "Install" {
  uses = "actions/npm@e7aaefe"
  runs = "npm install"
}

action "Build" {
  uses = "actions/npm@e7aaefe"
  needs = ["Install"]
  runs = "npm run build"
}
