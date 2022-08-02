provider "google" {
  project     = "kulbhushanmayer"
  region  = "us-central1"
  zone    = "us-central1-a"
}

data "google_compute_disk" "demo" {
    name = "demo"
    project = "kulbhushanmayer"
}

output "demo" {
    value = data.google_compute_disk.demo
}