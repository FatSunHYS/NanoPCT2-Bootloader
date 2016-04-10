#!/bin/bash

dd iflag=dsync oflag=dsync if=./prebuild/NISH1.bin of=/dev/sdb seek=1
dd iflag=dsync oflag=dsync if=./bootloader.bin of=/dev/sdb seek=2

