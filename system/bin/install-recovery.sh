#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:22730028:75f29026d4e6b9a7130724a91d62857ad6793b22; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:15492392:e8de322cc6beea69b07423f604aef3ce9f36929e EMMC:/dev/block/bootdevice/by-name/recovery 75f29026d4e6b9a7130724a91d62857ad6793b22 22730028 e8de322cc6beea69b07423f604aef3ce9f36929e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
