# moneta

For servers with slow disks but ample RAM.

Utility for managing a MySQL instance running in a tmpfs partition.

Usage:

  `moneta memorize` - move an existing on-disk MySQL server into a ramdisk.
  `moneta backup` - store the current server backup in a persistent location
  `moneta boot` - bring a freshly booted server online by mounting a ramdisk and restoring from backup.
