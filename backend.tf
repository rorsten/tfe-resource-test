terraform {
  backend "remote" {
    organization = "orstensemantics"
    workspaces {
      name = "tfe-resource-test"
    }
  }
}