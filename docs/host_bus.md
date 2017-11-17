
The host bus provided to the comm pack on its card-edge connector is in
fact the parallel system bus of the 1240's Z80 IO coprocessor. The comm
pack interface provides for two devices mapped into the Z80's address
space, each with their own select line. A 16KB ROM containing Z80
executable code for the comm pack's communication protocol and
configuration screen is mapped at 0xC000-0xFFFF and selected by the
`CROM` line. A second, 128-byte region mapped at 0xAE80-0xAEFF and
selected by the `COMM` line is provided for a type-specific IO device
(e.g. a UART on the RS-232 pack).


## Bus Timing

### Instruction Fetch

![instruction fetch timing diagram](host_bus_timing_fetch.svg)

No | Parameter                         | Min | Max | Unit
-- | --------------------------------- | --- | --- | ----
 1 | Address valid to `/CROM` fall     | 115 |     | ns
 2 | `/CROM` fall to `/RD` fall        | 
 3 | `/RD` fall to `/RD` rise          |
 4 | Data setup time to `/RD` rise     |
 5 | Data hold time after `/RD` rise   |


## Bus Structure

The Z80 is clocked at 4MHz. Tektronix have added a wait circuit that
asserts the `/WAIT` line for one clock cycle during the M1 machine cycle
in order to allow extra time for IO devices to respond.

### Address Lines

The Z80 has a 16-bit address bus, of which several lines are decoded.
The address bus is bufferred immediately after leaving the Z80 yielding
the `BA[0..15]` bus, which is internal to the IO Processor card. Lines
0..11 use a pair of Motorola 74LS244 buffers with their enable lines
tied, giving a maximum delay of 18ns. Lines 12..15 use a Motorola 74LS75
D latch with its (active high) enable inputs driven by the (active low)
`/MREQ` line, giving a 27ns maximum delay on either enable or input.

All but the high-order two lines of the `BA[0..15]` bus are then
buffered again to produce the `IA[0..13]` bus, which is exported via the
backplane connector to other cards and the comm pack. Lines 0..5 use a
Motorola 74LS365 buffer with its enable lines tied, giving a maximum
delay of 22ns. Lines 6..13 use a Motorola 74LS244 buffer with its enable
lines tied, giving a maximum delay of 18ns.

The `IA[0..13]` bus as a whole therefore stabilizes at most 45ns after
the processor outputs if `/MREQ` is already inactive, or 45ns after the
inactive-going edge on `/MREQ` otherwise.

### Select Lines

The device select lines are decoded from the `BA[0..15]` bus. Two lines
are of interest to us -- `/CROM` and `/COMM` -- and they're decoded via
very different paths. All of the decode circuits use the `/BMREQ` line,
which is buffered from the `/MREQ` line via a Motorola 74LS244 with its
enable lines tied, giving a maximum delay of 18ns.

The `/CROM` line is decoded from `BA[13..15]` via a TI 74S138, which has
a maximum delay of 12ns on either enable or decode. The outputs
corresponding to input of 110 and 111 are logical-ORed to form the
`/CROM` line via a TI 74LS08, which has a maximum delay of 20ns. The
decoder's (active low) enable inputs are driven by the `/BMREQ` line, so
the total delay is 50ns from the falling edge of `/MREQ`.

The `/COMM` line is decoded from `BA[7..15]` through several steps.
First, the enable signal for a TI 74S139 (which has a maximum delay of
12ns on either enable or decode) is driven by the output corresponding
to 101 of the same 74S138 as in the `/CROM` chain. The 74S139 decodes
the `/LATCHES` signal from `BA[11..12]` when its input is 10. The
`/COMM` signal is then decoded from `BA[7..10]` on an input of 1011
by another TI 74LS138 with its (active low) enable inputs driven by
`/LATCHES`, giving a maximum delay of 12ns on enable or input. The total
delay is therefore 56ns from the falling edge of `/MREQ`.

### Enable Lines

### Data Lines

The Z80 has an 8-bit bidirectional tri-state data bus. The data lines at
the processor form the `DD[0..7]` bus, which is internal to the IO
Processor card. For output, the `DD[0..7]` bus is latched through a
Motorola 74LS373 to form the `ID[0..7]` bus, which is exported via the
backplane connector to other cards and the comm pack. The latch outputs
go high-impedance when the `/IRD` line is asserted, but otherwise it
drives the bus all the time. The latch has a maximum propagation delay
of 18ns. Its maximum enable delay is 36ns, but that shouldn't matter.

For input, the `ID[0..7]` bus is buffered on to the `DD[0..7]` bus via a
NatSemi 81LS95 buffer, giving a maximum delay of 40ns. Its maximum
enable delay is 42ns and its maximum disable delay is 27ns, but those
shouldn't matter.
