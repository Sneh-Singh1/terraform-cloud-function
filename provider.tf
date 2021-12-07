terraform {
  required_version = ">= 0.12.10"
  required_providers {
    google = {
      version = "4.2.0"
      source  = "hashicorp/google"
    }
  }
}

provider "google" {
  region = "us-central1"
}