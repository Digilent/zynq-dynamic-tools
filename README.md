# Zynq dynamic tools
A collection of tools that can be used for dynamically programming the Zynq system-on-a-chip.

## Contents
This repository contains 2 main scripts, `generate` and `overlay`.

Running both scripts without any arguments will show a description of the available commands.
Also, running the `generate` script will provide information about any dependencies you might be missing.

`generate` can be used to generate a device tree blob overlay and/or a fpga bitstream bin file.
`overlay` can be used to apply a generated device tree blob overlay and/or program the fpga using a bitstream bin file, so it must be pushed onto the board you want to work on.
