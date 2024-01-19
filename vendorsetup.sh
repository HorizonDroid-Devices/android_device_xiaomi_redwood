rm -rf vendor/xiaomi
rm -rf kernel/xiaomi

git clone -b aosp git@github.com:thepriyanshujangid/android_device_xiaomi_sm8350-common.git device/xiaomi/sm8350-common
git clone  git@github.com:thepriyanshujangid/proprietary_vendor_xiaomi_sm8350-common.git vendor/xiaomi/sm8350-common

git clone git@codeberg.org:thepriyanshujangid/vendor_xiaomi_redwood_common.git vendor/xiaomi/redwood
git clone git@codeberg.org:thepriyanshujangid/proprietary_vendor_xiaomi_camera.git vendor/xiaomi/camera

git clone --depth=1 git@github.com:thepriyanshujangid/android_Kernel_Xiaomi_redwood_atomx.git kernel/xiaomi/sm8350 && cd kernel/xiaomi/sm8350 && git submodule init && git submodule update KernelSU && cd ../../../

rm device/xiaomi/redwood/vendorsetup.sh