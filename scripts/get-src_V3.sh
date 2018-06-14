#! /bin/bash

cd /srv
git clone https://github.com/N4IRS/stm32-dvm.git

cd /usr/src/
git clone https://git.code.sf.net/p/stm32flash/code stm32flash
git clone https://github.com/g4klx/MMDVM.git

cd /usr/src/MMDVM
git clone https://github.com/juribeparada/STM32F4XX_Lib.git

# Copy Config.h IO.cpp over the existing files.

cp /srv/stm32-dvm/Version_3/Config.h .
cp /srv/stm32-dvm/Version_3/IO.cpp .

make dvm

# For USB version:

# Put the board in Boot Loader mode (JP1)

# stm32flash -v -w bin/mmdvm_f4.bin /dev/ttyUSB0


# For PiHat:

# stm32flash -v -w bin/mmdvm_f4.bin -g 0x0 -R -i 20,-21,21:-20,21 /dev/ttyAMA0

# Note:
# MUST be stm32flash version 0.5 or later

