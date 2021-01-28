module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.2.5"
  gcp_project = "jenkinsx-demo-303013"
  cluster_name = "jenkinsx"
  # insert the 1 required variable here
}

terraform {
  backend "gcs" {
      bucket = "jenkinsx-state-files"
      prefix = "terraform/state"
  }
}