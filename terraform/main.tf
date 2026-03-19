resource "proxmox_vm_qemu" "gitlab" {
  vmid        = 180
  name        = "gitlab"
  target_node = "pve"
  agent       = 1
  cpu {
    cores = 2
  }
  memory      = 2048
  boot        = "order=scsi0"
  clone       = "ubuntu-24-04-template"
  full_clone  = true
  scsihw      = "virtio-scsi-single"
  vm_state    = "running"
  automatic_reboot = true

  # Если вы НЕ создавали snippets-файл, закомментируйте следующую строку (поставьте # в начале)
  # cicustom = "vendor=local:snippets/qemu-guest-agent.yml"

  ciupgrade   = true
  nameserver  = "8.8.8.8"
  ipconfig0   = "ip=192.168.0.180/24,gw=192.168.0.1"
  skip_ipv6   = true
  ciuser      = "alexander"
  cipassword  = "1"
  sshkeys     = var.ssh_key

  serial {
    id = 0
  }

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = "20G"
        }
      }
    }
    ide {
      ide2 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
  }

  network {
    id      = 0
    bridge  = "vmbr0"
    model   = "virtio"
  }
}