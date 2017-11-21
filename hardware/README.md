This directory contains the hardware design documentation for the
Ether1240 project. The Schematic and PCB designs are maintained with
the open source [KiCad] EDA package.

[KiCad]: http://kicad-pcb.org/


### Backup ROM Socket

As a backup to the bus controller's ROM emulation, the device has a
15.24mm DIP-28 socket that accepts ROMs compatible with the Intel 27128
EPROM used on the original comm packs. In-circuit programming is
supported for the Atmel AT28C64B and AT28C256 parallel EEPROMs, but only
when the device is disconnected from the 1240 and running on USB power.

## Copyright and License

Copyright 2017 Sam Hanes

This documentation describes Open Hardware and is licensed under the
CERN OHL v1.2.

You may redistribute and modify this documentation under the terms of
the [CERN OHL v.1.2][OHL]. This documentation is distributed WITHOUT ANY
EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY
QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN OHL
v1.2 for applicable conditions. You should have received a copy of the
OHL alonside this documentation in the file `LICENSE.txt`.

[OHL]: https://www.ohwr.org/projects/cernohl/wiki/cernohl
