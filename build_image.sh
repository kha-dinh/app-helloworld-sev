#!/bin/bash

OUT_ISO=kernel.iso
CMD_LINE=app-helloworld.cmdl
UNIKRAFT_DIR=../../unikraft
BINARY=build/helloworld_qemu-x86_64

if [ -f $CMD_LINE ]; then
  echo "app-helloworld" > $CMD_LINE
fi

make -j8 && sudo $UNIKRAFT_DIR/support/scripts/mkukimg -f iso -k $BINARY -b ukefi -a X64 -c $CMD_LINE -o $OUT_ISO


