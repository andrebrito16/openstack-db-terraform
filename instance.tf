resource "openstack_compute_instance_v2" "instancia" {
  name            = "basic"
  image_name      = "jammy-amd64"
  flavor_name     = "m1.medium"
  key_pair        = "mass_key"
  security_groups = ["default"]

  network {
    name = "network_1"
  }

  depends_on = [openstack_networking_network_v2.network_1]

}