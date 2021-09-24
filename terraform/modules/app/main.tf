resource "yandex_compute_instance" "app" {
  name = var.app_instance_name
  zone = var.instance_zone

  labels = {
    tags = "reddit-app"
  }
  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.app_disk_image
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

  connection {
    type        = "ssh"
    host        = yandex_compute_instance.app.network_interface.0.nat_ip_address
    user        = "ubuntu"
    agent       = false
    private_key = file(var.private_key_path)
  }

##### Application deployment is done by Ansible #####
#  provisioner "file" {
#    source      = "../files/puma.service"
#    destination = "/tmp/puma.service"
#  }
#  provisioner "remote-exec" {
#    script = "../files/deploy.sh"
#  }
}
