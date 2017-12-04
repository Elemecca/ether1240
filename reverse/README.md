# Reverse Engineering Files

This directory contains the working files for reverse engineering the
interface between the comm pack and the IO processor.

- `chargen.py` generates an SVG map of the 1240's proprietary character
  set from the character generation ROM image

## ROM Files

| Part Number | Designator | Address   | Description
| ----------- | ---------- | --------- | -----------
| 160-1915-00 | A31 U126   | C000-FFFF | RS-232 Comm Pack (B010100-B019999)
| 160-1915-01 | A31 U126   | C000-FFFF | RS-232 Comm Pack (B012000-present)
| 160-1916-01 | A32 U245   | C000-FFFF | GPIB Comm Pack
| 160-3072-00 | A10 U160   | 0000-1FFF | IO Processor 1
| 160-3073-00 | A10 U165   | 2000-3FFF | IO Processor 2
| 160-3074-00 | A10 U170   | 4000-5FFF | IO Processor 3
| 160-3075-00 | A10 U180   | 6000-7FFF | IO Processor 4
| 160-3076-00 | A10 U185   | 8000-9FFF | IO Processor 5
| 160-3077-00 | A12 U175   | C000-DFFF | Display (1241 only)
| 160-3078-00 | A12 U130   | N/A       | Character Gen

Only one of 160-1915-xx and 160-1916-xx will be present at once as they
belong to different comm packs.

The comm pack ROM 160-191x-xx and the display board ROM 160-3077-xx are
bank switched in the 1241 and occupy the same address space. If bit 3
at AC00 (A12 U420) is low the display ROM is selected. If it's high
the comm pack ROM is selected.

## Copyright and License

The ROM images (`.bin` files) are copyright Tektronix.

Other files in this directory were written by Sam Hanes in 2017.
To the extent possible under law, the author(s) have dedicated all
copyright and related and neighboring rights to this software to the
public domain worldwide. This software is distributed without any
warranty.

You should have received a copy of the CC0 Public Domain Dedication
along with this software. If not, see
  http://creativecommons.org/publicdomain/zero/1.0/
