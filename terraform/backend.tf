terraform {
  backend "s3" {
    bucket         = "devops-terraform-state-2026-elsayaad"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    use_lockfile = true
    encrypt        = true
  }
}