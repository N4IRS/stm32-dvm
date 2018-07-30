#! /bin/bash

cd /srv
# Get lib required for STM32F105
wget -O stm32cube_fw_f1_v140.zip http://dvswitch.org/files/HAM/MMDVM/stm32cube_fw_f1_v140.zip
# Put it where Makefile expects it
unzip -d /opt stm32cube_fw_f1_v140.zip
# Get last version of firmware without POCSAG
cd /srv/
wget https://github.com/g4klx/MMDVM/archive/d6c1bea80ae1fd150111bb7a692bb5320f3beed0.zip

unzip -d /usr/src d6c1bea80ae1fd150111bb7a692bb5320f3beed0.zip
mv /usr/src/MMDVM-d6c1bea80ae1fd150111bb7a692bb5320f3beed0 /usr/src/MMDVM

# Patch for proper config and ringbuffer size
cd /usr/src/MMDVM
patch </srv/stm32-dvm/Version_2/Config.h.patch
patch </srv/stm32-dvm/Version_2/SerialRB.h.patch

# Put flash scripts in /usr/local/sbin
cp /srv/MMDVM-Install/STM32-DVM/program-STM32_DVM_PiHat /usr/local/sbin
cp /srv/MMDVM-Install/STM32-DVM/program-STM32_DVM_USB /usr/local/sbin



