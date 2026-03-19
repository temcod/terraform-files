variable "ssh_key" {
  description = "My SSH public key"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCsZPJByj02Gn7+zIbeAChZ5XWZhdYRlPWm20oo68faWBzU+m3ZRfiFjXAeri6tQFf0MVmGXhLjf8Ef4BkyzYqw+Il8/FAcvNhDVxAel05obP6Kg6GEoj01eO1FKHuGVfg0Em7p+Gick7PGYWGySve1Kusp4B7YuLB3TtlfsE9Nl4tWUk9oeguV9SFfg4GuvIcJBo2/dDkf40VHOqpTvo4jgLIRtVuBdC8LVLsq5p1fSqyEWvRNIcA2/uK+ebw7cxkhE1hRDxrRswhsI6YodX99BycMlh6NLpqHNZvNbNRoUhQPHD7fBlbUn0AH7hvNFEcvdKMkQMowtAVzwi0PQHB/3JykeVegn7gdj9XyGwfgkIsmCcm4094JQokSKgs4MewqT0am9R4gfAWP8ha4lnbDSHTKNjXh5gbU+kbEX25ex2uomu0HQfm9VEmLDkwA26n86+fGiqN5sG4vpnxtI1Sz/mFdbqQtb3emalE1cmMrMjdUgC6Fa3PNDOxSIyuJZblJ8U4EPkVd1ilu4GuHKJDNi24MZHlk7OmtNp0X2JCa5qGvL+tvXyurb883Ol6825JWl1Xv2FCq/MCYifiE/VFTtrJhw66tLmthqKiS02emRj8v+pRIcWGGTX7FdrIbKZBAkc+fezxInnqxq/jYhkEPkOyVb+UNUN5ub3vbf7setQ=="   # ПЕРВИЧНЫЙ КЛЮЧ КЛЮЧ
}

variable "password" {
  description = "my PVE password"
  type        = string
  default     = "Proxmox2026"   # ПАРОЛЬ ОТ PROXMOX
}