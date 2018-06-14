#! /bin/bash

cd /srv
git clone https://github.com/N4IRS/stm32-dvm.git

unzip -d /opt /srv/stm32-dvm/CMSIS/stm32cube_fw_f1_v140.zip

cd /usr/src/
git clone https://git.code.sf.net/p/stm32flash/code stm32flash
git clone https://github.com/g4klx/MMDVM.git

cd /usr/src/MMDVM

git clone https://github.com/juribeparada/STM32F4XX_Lib.git

cp /srv/stm32-dvm/Version_2/Config.h /usr/src/MMDVM
cp /srv/stm32-dvm/Version_2/SerialRB.h /usr/src/MMDVM

# cp /srv/MMDVM-Install/STM32-DVM/program-STM32_DVM_PiHat /usr/local/sbin

# cp /srv/MMDVM-Install/STM32-DVM/program-STM32_DVM_USB /usr/local/sbin



