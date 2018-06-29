This is for the Version 3 (Blue Board) ONLY!
Clone the MMDVM repository from G4LKX

git submodule init
git submodule update

Copy Config.h and IO.cpp over the existing files.
Note: All IO.cpp does is change the startup LED sequence.


make dvm

For USB version:

Put the board in Boot Loader mode (JP1)

stm32flash -v -w bin/mmdvm_f4.bin /dev/ttyUSB0


For PiHat:

stm32flash -v -w bin/mmdvm_f4.bin -g 0x0 -R -i 20,-21,21:-20,21 /dev/ttyAMA0

Note:
MUST be stm32flash version 0.5 or later 
