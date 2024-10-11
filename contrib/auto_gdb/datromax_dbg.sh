#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.datromaxcore/datromaxd.pid file instead
datromax_pid=$(<~/.datromaxcore/testnet3/datromaxd.pid)
sudo gdb -batch -ex "source debug.gdb" datromaxd ${datromax_pid}
