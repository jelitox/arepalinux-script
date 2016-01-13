ArepaLinux Script Elementary version 0.1
-----------------------------------------

ArepaLinux script elementary is a Elementary OS-based script for automated installation of high-end Laptops & Workstations.

installs, configures and optimizes a Elementary OS system in a few minutes.

Features
--------

- Installs a Elementary OS  (last stable) system

Dependencies
------------

ArepaLinux Script require a Elementary OS basic with this partition schema:

- Basic Elementary OS

= Partition Schema
- /boot (Primary, 512MB, ext2|ext3|ext4, active)
- / (ext4)

its also compatible with EFI installations.

This script is released under GPL version 3.0.

Use
---

Options:
  -n, --hostname             specify the name of the debian server
  -r, --role                 role-based script for running in server after installation
  -D, --domain               define Domain Name
  -l, --lan                  define LAN Interface (ej: eth0)
  --packages                 Extra comma-separated list of packages
  --debug                    Enable debugging information

example:

./arepalinux.sh -n box1 -D devel.local -l eth0 --packages screen

Debug Options
-------------

--debug : begin a "step by step" process with comments
--step=N : begin only the step listed with number "N", example:

./arepalinux.sh --step=01

starts APT configuration.

-----

Lynis Hardening Index:

================================================================================
  Hardening index : [90]     [##################  ]
================================================================================
