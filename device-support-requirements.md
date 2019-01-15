Welcome to the LineageOS Device Support Requirements. This document enumerates the requirements that must be met in order for devices to be deemed ship ready for LineageOS releases, beginning with Android Oreo.
To be considered ready, device maintainers MUST meet the requirements presented in this document, including any documents incorporated via reference.

The use of “MUST”, “MUST NOT”, “REQUIRED”, “SHALL”, “SHALL NOT”, “SHOULD”, “SHOULD NOT”, “RECOMMENDED”, “MAY”, and “OPTIONAL” is per the IETF standard defined in RFC2119.

### Table of Contents

* [Attaining exceptions](#attaining-exceptions)
  * [Process](#process)
* [Hardware Support](#hardware-support)
  * [Audio](#audio)
  * [RIL](#ril)
  * [Encryption](#encryption)
  * [Wifi](#wifi)
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
  * [Accelerometer](#accelerometer)
  * [Gyroscope](#gyroscope)
  * [Proximity](#proximity)
  * [Light](#light)
  * [Other Sensors](#other-sensors)
  * [Accessories](#accessories)
  * [Hardware Deviations](#hardware-deviations)
* [Software support](#software-support)
  * [Lineage.mk](#lineagemk)
  * [Lineage.Dependencies](#lineagedependencies)
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
  * [Firmware Assert](#firmware-assert)
  * [exFAT Support](#exfat-support)
  * [Additional Features](#additional-features)
  * [Software Deviations](#software-deviations)
  * [Vendor Images](#vendor-images)
  * [Firmware Dependencies](#firmware-dependencies)
* [Quality of life](#quality-of-life)
  * [Commit Authorship](#commit-authorship)
  * [Copyrights](#copyrights)
  * [Workflow](#workflow)
  * [JIRA](#jira)
  * [Licensing](#licensing)
  * [Wiki](#wiki)
  * [Stability](#stability)
  * [Recovery](#recovery)
* [Exceptions](#exceptions)

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
* All devices MUST support any other audio output supported by their stock OS (eg. Headphone jack, USB-C, BT).
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

## Wifi

* All devices with Wi-Fi supported in their stock OS MUST support Wi-Fi.
* All devices with Wi-Fi MUST support the same band configuration as stock.
* All devices with Wi-Fi SHOULD support the same featureset as stock (ex. Wi-Fi Direct).
* All devices with Wi-Fi MUST report same MAC address as on stock OS.
* All devices with Wi-Fi hotspot capabilities MUST support Wi-Fi tethering.

## USB

* All devices with a USB port MUST support the same USB version that they do on stock.
* All devices with a USB port MUST support file access via MTP.
* All devices with USB tethering supported on their stock OS MUST support USB tethering.
* All devices with a USB port & mobile data SHOULD support USB tethering.
* All devices that support USB-OTG on their stock OS MUST support USB-OTG.
* All USB-C devices SHOULD support all the power profiles supported on their stock OS.
* All USB-C devices SHOULD support all the video profiles supported on their stock OS.

## GPS

* All devices with GPS supported in their stock OS MUST support GPS.
* All devices with GPS MUST be able to acquire 3D lock.
* All devices with GPS SHOULD support the same positioning protocols as the stock OS (ex. GPS, GLONASS).

## Bluetooth

* All devices with Bluetooth supported in their stock OS MUST support Bluetooth.
* All devices with Bluetooth MUST report same MAC address as on stock OS.
* All devices with Bluetooth SHOULD support Bluetooth tethering.
* All devices with Bluetooth MUST support the same Bluetooth profiles as the stock OS (ex. A2DP).
* All devices with Bluetooth SHOULD support the same Bluetooth version as the stock OS.
* All devices with support for Qualcomm® aptX™, aptX™ HD, or any future variant of aptX™, in stock (non-beta releases) OS SHOULD support those variant of aptX™.
* All devices without support for Qualcomm® aptX™, aptX™ HD, or any future variant of aptX™ in stock (non-beta releases) OS MUST NOT support those variants of aptX™.

## Camera

* All devices with Camera supported in their stock OS MUST support Camera, in both front facing and rear camera configurations.
* All devices with Dual (or more) Rear Cameras SHOULD support all rear cameras.
* All devices with Dual (or more) Front Facing Cameras SHOULD support all front cameras.
* All devices with Camera MUST support the same level of the Camera API as the stock OS (ex. 1.0, 3.2, 3.3, 3.4).
* All Camera HAL versions accessible with the device's Camera HAL MUST comply with the Camera and Video Recording requirements.

## Video Recording

* All devices with Video Recording supported in their stock OS MUST support Video Recording, in both front facing and rear camera configurations.

## Codecs

* All devices with hardware encoding/decoding support in their stock OS MUST support hardware encoding/decoding for all non-proprietary codecs supported by their stock OS.

## Display

* All devices with a built-in Display MUST support the Display at the same resolution and density as the stock OS.
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

## Lineage.mk

* Device trees MUST contain a lineage.mk file with device declaration of lineage_[devicename].

## Lineage.Dependencies

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
* All devices MUST support su installation via LineageOS provided ‘Extras’ download.

## Non-PIE Blobs

* Devices MUST NOT use non-PIE binaries.

## Proprietary files extraction

* Devices MUST have a working proprietary files extraction script in their device tree (or device tree dependencies) that reproduces an exact copy of the binaries required to build LineageOS from an existing LineageOS installation.
* Devices SHOULD use the global extraction script (located in vendor/lineage).
* If a device maintainer elects to not use the common extraction script, the maintainer MUST ensure that the Wiki page for their device has valid instructions for operating the custom extraction script.

## CVE

* Devices MUST support CVE patches for “high profile” exploits and vulnerabilities (if the media is reporting on it, then we must have it patched).
* [NOTE: This will become a MUST once CVE autopatcher is live & automated]
* Devices SHOULD receive regular CVE patches to the device kernel and dependencies.
* [To be in effect once CVE autopatcher is live & automated]
* Device maintainers MUST review and/or accept patches provided by the CVE autopatcher tool.

## Firmware Assert

* All devices MUST assert on known to be working firmware versions if some firmware versions are known to be non-working.

## exFAT Support

__LineageOS operates under the assumption that OEM device licensing for exFAT is attached to the device, not software. LineageOS will comply with all requests for removal of exFAT support from OEMs, Microsoft or their representatives upon contact to legal@lineageos.org.__

* All devices with exFAT support on stock MAY support exFAT with (and only with) a kernel based implementation.
* All devices without exFAT support on stock MUST NOT support exFAT.

## Additional Features

* All devices SHOULD support in-kernel (MDSS, MDNIE or similar) LiveDisplay colour adjustment.

## Software Deviations

__Software deviations are defined as exemptions granted for software requirements above that worked in stock, but do not work in LineageOS.__

* All software deviations from other LineageOS devices of the same type MUST be approved by Directors (eg. if one wants to remove Music app, get approval).
* All software deviations from other LineageOS devices of the same type MUST be reported on the Wiki page for the device, with a user understandable justification.
* Device maintainers MUST ship Jelly or another LineageOS sourced web browser.

## Vendor Images
* All treble enabled builds SHOULD ship with a source-built or prebuilt vendor image.
* All A/B treble device builds MUST ship with a source-built or prebuilt vendor image.
* All non-A/B treble device builds not shipping a vendor image MUST assert vendor image versions at flash-time.
* Devices building a vendor image SHOULD verify basic hardware functionality with an AOSP GSI.

## Firmware Dependencies
* All changes that require device firmware changes MUST be accompanied by an assert to ensure builds are not flashed on imcompatible firmware.
* All firmware changes SHOULD be documented in a user accessible location to ensure users are able to upgrade their firmware.

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

## JIRA

* Device maintainer(s) MUST have a JIRA account for bug tracking and cross-team collaboration.
* Device maintainer(s) MUST routinely triage, answer and close JIRA reports.
* Device maintainer(s) SHOULD make their JIRA name match their maintainer name as displayed on the Wiki.

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

## Recovery

* Maintainers MUST document for users on the Wiki a valid Recovery image by which to install LineageOS zip files.
* Devices that do not have traditional Recovery images MUST support & document another means of installation for LineageOS zip files.
* Maintainers SHOULD verify that Teamwin Recovery Project (TWRP) official distributions work for LineageOS installation.
* Failures in official TWRP recoveries should be raised with the TWRP team or remedied by the maintainer.
* Maintainers SHOULD provide a custom recovery link in Wiki documentation if TWRP does not officially support their device.


# Exceptions

All currently granted exceptions should be listed in the following table. To request an exception, please submit a change to this repository.

| Date       | Device/OEM         | Section Exempted               | Reason |
|------------|--------------------|--------------------------------|--------|
| 2018/02/08 | Samsung            | Hardware Encryption            | Samsung devices that cannot support hardware encryption due to Knox/Tee are exempted from the hardware crypto requirements. MUST still support software crypto. |
| 2018/02/11 | Android TV devices | In-Remote Microphones          | Requires proprietary audio routing/methods that have no OSS counterpart, and rely on proprietary functions. MUST support Microphone input through the Android TV Remote app.|
| 2018/02/12 | hlte[can/tmo/usc/vzw] | NFC                         | Stock NFC HAL is undocumented and doesn't match any known interfaces. Stealing configs and firmware from devices with a proper setup fails due to a signature mismatch when the (required) firmware download is attempted. |
| 2018/05/21 | Tegra chipsets     | Hardware Codecs                | Devices using the t30, t114, t124, or t132 chipsets have closed source OMX libraries incompatible with even the non-treble OMX interface in Oreo. |
---
__This document is licensed CC-BY-3.0, with portions adapted from Google’s CDD requirements.__
