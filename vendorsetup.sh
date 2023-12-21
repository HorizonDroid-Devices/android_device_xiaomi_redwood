echo 'Starting to clone stuffs needed for redwood device'

echo 'Cloning common device Tree [1/4]'
rm -rf device/xiaomi/sm8350-common
git clone --depth=1 git@github.com:ProjectElixir-Devices/device_xiaomi_sm8350-common.git -b Redwood device/xiaomi/sm8350-common

echo 'Cloning kernel Tree [2/4]'
# Kernel Tree
rm -rf kernel/xiaomi
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_kernel_xiaomi_redwood  kernel/xiaomi/sm8350
#git clone --depth=1 https://github.com/ProjectElixir-Devices/android_device_xiaomi_redwood-kernel  device/xiaomi/redwood-kernel

echo 'Cloning Vendor tree [3/4]'
# Vendor Tree
rm -rf vendor/xiaomi
git clone --depth=1 https://github.com/ProjectElixir-Devices/proprietary_vendor_xiaomi_redwood  vendor/xiaomi/redwood
git clone --depth=1 git@github.com:ProjectElixir-Devices/vendor_xiaomi_sm8350-common  -b Redwood vendor/xiaomi/sm8350-common

echo 'Cloning hardware/xiaomi [4/4]'
# hardware Repo
rm -rf hardware/xiaomi
git clone --depth=1 https://github.com/Project-Elixir/hardware_xiaomi  hardware/xiaomi

echo 'Completed, Now proceeding to lunch'