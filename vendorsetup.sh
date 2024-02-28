# Remove Existing Repos
#rm -rf system/bpf
#rm -rf hardware/mediatek
rm -rf device/mediatek/sepolicy_vndr

# Clone Repos
#git clone https://github.com/kelexine/bpf system/bpf
#git clone https://github.com/nashc-dev/android_hardware_mediatek hardware/mediatek
git clone https://github.com/Shirayuki39/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr
wget https://github.com/kelexine/android_device_tecno_kelly/releases/download/v1/vendor.img -O vendor/tecno/kelly/vendor.img
