Welcome to the LineageOS Device Support Requirements. This document enumerates the requirements that must be met in order for devices to be deemed ship ready for LineageOS releases, beginning with Android Oreo.
To be considered ready, device maintainers MUST meet the requirements presented in this document, including any documents incorporated via reference.

The use of “MUST”, “MUST NOT”, “REQUIRED”, “SHALL”, “SHALL NOT”, “SHOULD”, “SHOULD NOT”, “RECOMMENDED”, “MAY”, and “OPTIONAL” is per the IETF standard defined in RFC2119.

### Table of Contents

* [Device ownership](#device-ownership)
* [Attaining exceptions](#attaining-exceptions)
  * [Process](#process)
* [Hardware Support](#hardware-support)
  * [Audio](#audio)
  * [RIL](#ril)
  * [Encryption](#encryption)
  * [Wi-Fi](#wi-fi)
  * [USB](#usb)
  * [GPS](#gps)
  * [Bluetooth](#bluetooth)
  * [Camera](#camera)
  * [Video Recording](#video-recording)
  * [Codecs](#codecs)
  * [Display](#display)
  * [NFC](#nfc)
  * [Fingerprint Sensor](#fingerprint-sensor)
  * [IR](#ir)
  * [SD card](#sd-card)
  * [Accelerometer](#accelerometer)
  * [Gyroscope](#gyroscope)
  * [Proximity](#proximity)
  * [Light](#light)
  * [Other Sensors](#other-sensors)
  * [Accessories](#accessories)
  * [Hardware Deviations](#hardware-deviations)
* [Software support](#software-support)
  * [Device tree structure](#device-tree-structure)
  * [Build type](#build-type)
  * [Kernel](#kernel)
  * [SELinux status](#selinux-status)
  * [Verity](#verity)
  * [Updater](#updater)
  * [FRP](#frp)
  * [SafetyNet](#safetynet)
  * [Binder](#binder)
  * [Root (su)](#root-su)
  * [Non-PIE Blobs](#non-pie-blobs)
  * [Proprietary files extraction](#proprietary-files-extraction)
  * [CVE](#cve)
  * [Firmware](#firmware)
  * [exFAT Support](#exfat-support)
  * [Additional Features](#additional-features)
  * [Software Deviations](#software-deviations)
  * [Vendor Images](#vendor-images)
* [Quality of life](#quality-of-life)
  * [Commit Authorship](#commit-authorship)
  * [Copyrights](#copyrights)
  * [Workflow](#workflow)
  * [GitLab Issues](#gitlab-issues)
  * [Licensing](#licensing)
  * [Wiki](#wiki)
  * [Stability](#stability)
  * [LineageOS Recovery](#lineageos-recovery)
  * [Addon packages](#addon-packages)
* [Exceptions](#exceptions)

# Device ownership

* Maintainers MUST own the device or at least a variant of it (devices with similar hardware but a different marketing name are allowed).

# Attaining exceptions

## Process

* Device or software deviations from our core product (as described below) MUST be approved by no less than 3 Project Directors.
* Device or software exceptions SHOULD be made via change request to this repository.
* All device or software exceptions that are granted MUST be documented on the Wiki for all affected devices.

# Hardware Support

## Audio

* All devices MUST support audio playback for media content.
* Phones MUST support in-call audio.
* Phones MUST support speaker audio.
* Tablet devices capable of in-call audio/speaker audio MUST support in-call/speaker audio.
* Devices SHOULD support any additional audio configuration inherent to their device (eg. echo cancellation, extra mics, etc).
* All devices MUST support any other audio output supported by their stock OS (eg. headphone jack, USB-C, BT).
* All devices with FM radio capabilities in their stock OS SHOULD support FM.

## RIL

* All devices with RIL supported in their stock OS MUST support RIL for phone calls & data.
* All devices with RIL supported in their stock OS MUST support emergency calling with a SIM inserted (112/911).
* All devices with RIL supported in their stock OS SHOULD support emergency calling without a SIM inserted (112/911).
* Data-only devices (defined as devices that have a RIL but do not support telephony stack due to hardware/firmware restrictions) are EXEMPTED from phone & emergency dialing requirements.

## Encryption

* All devices that supported hardware-backed encryption on their stock OS MUST support hardware-backed encryption.
* All devices that shipped stock as forceencrypt SHOULD default to forceencrypt enabled.
* All devices MUST support software encryption.

## Wi-Fi

* All devices with Wi-Fi supported in their stock OS MUST support Wi-Fi.
* All devices with Wi-Fi MUST report same MAC address as on stock OS.
* All devices with Wi-Fi hotspot capabilities MUST support Wi-Fi tethering.

## USB

* All devices with a USB port MUST support file access via MTP.
* All devices with USB tethering supported on their stock OS MUST support USB tethering.
* All devices with a USB port & Data SHOULD support USB tethering.

## GPS

* All devices with GPS supported in their stock OS MUST support GPS.

## Bluetooth

* All devices with Bluetooth supported in their stock OS MUST support Bluetooth.
* All devices with Bluetooth MUST report same MAC address as on stock OS.
* All devices with Bluetooth SHOULD support Bluetooth tethering.
* All devices with support for Qualcomm® aptX™, aptX™ HD, or any future variant of aptX™, in stock (non-beta releases) OS SHOULD support those variant of aptX™.
* All devices without support for Qualcomm® aptX™, aptX™ HD, or any future variant of aptX™ in stock (non-beta releases) OS MUST NOT support those variants of aptX™.

## Camera

* All devices with Camera supported in their stock OS MUST support Camera, in both front facing and rear camera configurations.
* All devices with Dual (or more) Rear Cameras SHOULD support all rear cameras.
* All devices with Dual (or more) Front Facing Cameras SHOULD support all front cameras.
* All Camera HAL versions accessible with the device's Camera HAL MUST comply with the Camera and Video Recording requirements.

## Video Recording

* All devices with Video Recording supported in their stock OS MUST support Video Recording, in both front facing and rear camera configurations.

## Codecs

* All devices with hardware encoding/decoding support in their stock OS MUST support hardware encoding/decoding for all non-proprietary codecs supported by their stock OS.

## Display

* All devices with a built-in Display MUST support the Display at the same resolution as the stock OS.
* All devices with a built-in Display SHOULD support the Display at the same density as the stock OS.
* All devices that do not include a built-in Display MUST support Display output via the hardware’s supported outputs (eg. Android TV - HDMI).
* All devices that support additional non-USB display interfaces SHOULD support those display output methods.
* All devices that support a USB-out display in their stock OS SHOULD support this display output (eg. MHL/Miracast/OTG).
* All devices that support HDR10 playback in their stock OS SHOULD support HDR10 playback.

## NFC

* All devices with NFC supported in their stock OS MUST support NFC.

## Fingerprint Sensor

* All devices with a Fingerprint Sensor MUST support the Fingerprint Sensor if the stock OS supports it with Marshmallow or higher Android versions.
* All devices with a Fingerprint Sensor SHOULD support the Fingerprint Sensor if the stock OS supports it for all other Android versions.

## IR

* All devices with an IR blaster SHOULD support IR blaster.

## SD card

* All devices with an SD card slot MUST support SD cards.
* All devices with an SD card slot SHOULD support adoptable storage.

## Accelerometer

* All devices with an accelerometer MUST support the accelerometer.

## Gyroscope

* All devices with a gyroscope MUST support the gyroscope.

## Proximity

* All devices with a proximity sensor MUST support the proximity sensor.

## Light

* All devices with a light sensor MUST support the light sensor.

## Other Sensors

* All other sensors supported by a device’s stock OS SHOULD be supported.

## Accessories

* All devices with proprietary accessories SHOULD support those accessories (eg. O-Click, Essential 360 Camera).

## Hardware Deviations

__Hardware deviations are defined as exemptions granted for hardware requirements above that worked in stock, but do not work in LineageOS.__

* All hardware deviations from stock MUST be reported on the Wiki page for the device, with a user understandable justification.

# Software support

## Device tree structure

* Device trees MUST contain a Lineage-specific makefile with device declaration of lineage_[devicename].
* Device trees MUST support a lineage.dependencies file for `breakfast` command & roomservice to be functional.
  * This file MUST NOT include any dependencies outside of the "LineageOS" organization.

## Build type

* All devices MUST be configured as userdebug releases.

## Kernel

* All devices MUST NOT ship a prebuilt kernel.
* All devices MUST NOT implement software based touchscreen wake features such as double tap to wake, swipe to wake or gestures if there is no hardware-backed support for them in the touchscreen firmware.
* All devices MUST NOT implement forced fast charge over USB methods that violate the USB specifications.
* All devices MUST NOT implement any form of clock manipulation (underclocking, overclocking, etc.) for any processor (CPU, GPU).
* All devices MUST NOT implement any form of hardware voltage manipulation (undervolting, custom voltage tables, etc.).
* All devices MUST NOT implement any form of hardware register manipulation (sound control, etc.).
* All devices MUST NOT implement any form of custom KSM driver (UKSM, etc.).
* All devices MUST NOT ship governors other than the ones specified in the following list:
  * conservative
  * interactive
  * ondemand
  * performance
  * powersave
  * sched
  * schedutil
  * userspace

* All devices MUST NOT ship I/O schedulers other than the ones specified in the following list:
  * bfq
  * cfq
  * deadline
  * noop
  * row

* All devices MUST only ship hotplugging drivers provided by the OEM or SoC vendor.

## SELinux status

* All devices MUST be configured for SELinux Enforcing.

## Verity

* All devices MUST disable verity on the system image for userdebug builds.
* All devices SHOULD support verity on the vendor image.

## Updater

* All devices with a shipping build of LineageOS MUST support upgrades via the native LineageOS Updater application & the recovery documented on the Wiki for that device.

## FRP

* All devices with stock support of Factory Reset Protection (FRP) SHOULD support FRP when Google Applications are installed by the user.

## SafetyNet

* All devices MUST NOT alter SafetyNet validation responses.

## Binder
* All devices MUST use the 64-bit Binder API.

## Root (su)

* All devices MUST NOT ship with su included.
* All devices shipping LineageOS 16.0 or earlier MUST support su installation via LineageOS provided ‘Extras’ download.

## Non-PIE Blobs

* Devices MUST NOT use non-PIE (position-independent executable) binaries.

## Proprietary files extraction

* Devices MUST have a working proprietary files extraction script in their device tree (or device tree dependencies) that reproduces an exact copy of the binaries required to build LineageOS from an existing LineageOS installation.
* Devices SHOULD use the global extraction script (located in tools/extract-utils).
* If a device maintainer elects to not use the common extraction script, the maintainer MUST ensure that the Wiki page for their device has valid instructions for operating the custom extraction script.
* Devices MUST use proprietary files extracted from, in order of preference, the same device's publicly-released image, another device's publicly-released image, or some other source with appropriately transferrable use/release/dissemination rights. In the event of the last option, artifacts documenting suitable transferability of rights MUST be provided to LineageOS project leadership.
* All proprietary files lists MUST contain a short comment noting the source of any un-pinned (default) proprietary files.
* Any proprietary files not sourced from the noted default MUST be pinned in the respective proprietary files list and have a short comment noting the source of those proprietary files.
* Devices MUST NOT include blobs belonging to Megvii Technology Ltd. or SenseTime Group Ltd.

## CVE

* Devices MUST support CVE patches for “high profile” exploits and vulnerabilities (if the media is reporting on it, then we must have it patched).
* Devices SHOULD receive regular CVE patches to the device kernel and dependencies.

## Firmware

* All devices MUST assert on known to be working firmware versions if some firmware versions are known to be non-working.
* A/B devices are exempted from the above rule, and instead must do one of the following:
  * If the device is capable of shipping firmware it MUST do so.
  * If the device is not capable of shipping firmware (eg. a device with multiple variants supported in one build) the device MUST ensure both slots are on a known good firmware (eg. using the copy-partitions before_lineage_install template on the Wiki).

## exFAT Support

__LineageOS operates under the assumption that OEM device licensing for exFAT is attached to the device, not software. LineageOS will comply with all requests for removal of exFAT support from OEMs, Microsoft or their representatives upon contact to legal@lineageos.org.__

* All devices shipping with a Linux kernel version of lower than 5.7 with exFAT support on stock MAY support exFAT with (and only with) a kernel based implementation of the maintainers choice.
* All devices shipping with a Linux kernel version of greater than or equal to 5.7 MAY support exFAT with the mainline Linux implementation, or the implementation provided by their device's vendor.
* All devices not meeting one of the above requirements MUST NOT support exFAT.

## Additional Features

* All devices SHOULD support in-kernel (MDSS, MDNIE or similar) LiveDisplay colour adjustment.

## Software Deviations

__Software deviations are defined as exemptions granted for software requirements above that worked in stock, but do not work in LineageOS.__

* All software deviations from other LineageOS devices of the same type MUST be approved by Directors (eg. if one wants to remove Music app, get approval).
* All software deviations from other LineageOS devices of the same type MUST be reported on the Wiki page for the device, with a user understandable justification.
* Device maintainers MUST ship Jelly or another LineageOS sourced web browser.

## Vendor Images
* All non-A/B devices relying on an OEM provided vendor partition must assert vendor image versions at flash-time.
* All A/B devices with a vendor partition MUST either:
  * Build a vendor image.
  * Detail on the Wiki: The required firmware version, the process of installing it, and a process that ensures all slots are on the same firmware (eg. the Wiki's copy-partitions template).
* All maintainers MUST NOT require a modified prebuilt vendor image either in their build tree, or on the Wiki.
* All Treble enabled devices SHOULD verify basic hardware functionality with an AOSP GSI.

# Quality of life
## Commit Authorship

* All non-original commits MUST have proper authorship attribution from the source it was taken from or adapted from.

## Copyrights

* All original contributions MUST be copyrighted as “(C) [YEAR] The LineageOS Project”.
* All LineageOS copyrights MUST only be additive to the copyright header.
* Do not remove copyrights from CyanogenMod, Cyanogen Inc or any other upstream.

## Workflow

* Force pushing branches SHOULD be avoided.
* In the event of a force pushed branch, backup branches of the pre-forced HEAD MUST be made.

## GitLab Issues

* Device maintainer(s) MUST have a GitLab account for bug tracking and cross-team collaboration.
* Device maintainer(s) MUST routinely triage, answer and close bug reports.
* Device maintainer(s) SHOULD make their GitLab name match their maintainer name as displayed on the Wiki.

## Licensing

* All Kernel contributions MUST be GPLv2.
* All Android contributions SHOULD be Apache 2.0 licensed.
* Any contribution to an existing Apache 2.0 project MUST fall under Apache Compliance Category A.
* Any contribution to an existing Apache 2.0 project MUST NOT be in Apache Compliance Category X.

## Wiki

* All devices with a shipping build of LineageOS MUST have a Wiki page with valid installation instructions.
* All devices with a shipping build of LineageOS MUST document Hardware Deviations from stock capabilities.
* All devices with a shipping build of LineageOS MUST document Software Deviations from other LineageOS releases of the same device type.

## Stability

* Issues like the "screen of death" MUST NOT affect the device.
* The device MUST NOT have abnormal battery drain.

## LineageOS Recovery

* Maintainers wishing to ship LineageOS 17.0+ for their device MUST verify official LineageOS Recovery distributions work for LineageOS installation.
* Maintainers wishing to ship LineageOS 18.1+ MUST ship LineageOS Recovery as the default solution for their device on the Wiki.
* Devices that do not have traditional recovery images MUST support & document another means of installation for LineageOS zip files.

## Addon packages

* Maintainers wishing to ship LineageOS 19.0+ for their device MUST verify addon packages listed on the wiki can be installed through Lineage Recovery.

# Exceptions

All currently granted exceptions should be listed in the following table. To request an exception, please submit a change to this repository.

| Date       | Device/OEM         | Section Exempted               | Reason |
|------------|--------------------|--------------------------------|--------|
| 2018/02/08 | Samsung            | Hardware Encryption            | Samsung devices that cannot support hardware encryption due to Knox/Tee are exempted from the hardware crypto requirements. MUST still support software crypto. |
| 2018/02/11 | Android TV devices | In-Remote Microphones          | Requires proprietary audio routing/methods that have no OSS counterpart, and rely on proprietary functions. MUST support Microphone input through the Android TV Remote app.|
| 2018/02/12 | hlte[can/tmo/usc/vzw] | NFC                         | Stock NFC HAL is undocumented and doesn't match any known interfaces. Stealing configs and firmware from devices with a proper setup fails due to a signature mismatch when the (required) firmware download is attempted. |
| 2019/10/21 | s3ve3g*            | NFC                         | Stock NFC HAL is undocumented and doesn't match any known interfaces. Stealing configs and firmware from devices with a proper setup fails due to a signature mismatch when the (required) firmware download is attempted. |
| 2023/04/11 | FDE only devices | Encryption | As of Android 13, FDE is no longer supported. All devices that can MUST migrate to FBE, but Some devices have custom keymaster HAL implementations that only allow FDE to function. Devices only capable of using FDE that are promoted to LineageOS 20 or above are exempted from encryption requirements. These devices MUST display a notice on the LineageOS Wiki that details this exemption. |
---

__This document is licensed CC-BY-3.0, with portions adapted from Google’s CDD requirements.__
