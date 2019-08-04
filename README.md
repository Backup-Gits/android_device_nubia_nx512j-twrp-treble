## TWRP Treble device tree for Nubia Z9 Max


1) Create {source-dir} and initialize Omni sources (we need make_ext4fs from Oreo tree): 

```
repo init -u git://github.com/omnirom/android.git -b android-8.1
repo sync
```

2) Replace '{source-dir}/bootable/recovery/' on this tree: https://github.com/omnirom/android_bootable_recovery/tree/android-9.0

3) Place this files https://github.com/omnirom/android_external_busybox/tree/android-8.1 to {source-dir}/external/busybox/

4) Place this device tree files to {source-dir}/device/nubia/nx512j

5) Place this kernel files https://github.com/TTTT555/android_kernel_nubia_nx512j to {source-dir}/kernel/nubia/nx512j


To build:

```
cd {source-dir}
. build/envsetup.sh
lunch omni_nx512j-eng
mka recoveryimage
```
