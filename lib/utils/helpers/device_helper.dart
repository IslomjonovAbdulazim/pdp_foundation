import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io';

class DeviceHelper {
  static final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  /// Get the device name (e.g., iPhone 14, Samsung Galaxy S22)
  static Future<String> getDeviceName() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      return androidInfo.model; // e.g., "Pixel 6"
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      return iosInfo.utsname.machine; // e.g., "iPhone14,3"
    }
    return "Unknown Device";
  }

  /// Get the unique device ID
  static Future<String> getDeviceId() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      return androidInfo.id; // Unique Android ID
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      return iosInfo.identifierForVendor ?? "Unknown ID"; // Unique iOS ID
    }
    return "Unknown ID";
  }

  /// Get the OS version (e.g., Android 13, iOS 17)
  static Future<String> getOsVersion() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      return "Android ${androidInfo.version.release}";
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      return "iOS ${iosInfo.systemVersion}";
    }
    return "Unknown OS";
  }

  /// Get the device manufacturer (e.g., Apple, Samsung, Google)
  static Future<String> getManufacturer() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      return androidInfo.manufacturer; // e.g., "Samsung"
    } else if (Platform.isIOS) {
      return "Apple"; // iOS devices are always from Apple
    }
    return "Unknown Manufacturer";
  }

  /// Get the device model name (e.g., "iPhone 14 Pro", "Samsung S22 Ultra")
  static Future<String> getModel() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      return androidInfo.model;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      return iosInfo.name; // Friendly device name
    }
    return "Unknown Model";
  }

  /// Get the device architecture (e.g., "arm64", "x86_64")
  static Future<String> getDeviceArchitecture() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      return androidInfo.supportedAbis.first;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      return iosInfo.utsname.machine; // Architecture details
    }
    return "Unknown Architecture";
  }

  /// Check if the device is a physical device or an emulator
  static Future<bool> isPhysicalDevice() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      return androidInfo.isPhysicalDevice;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      return iosInfo.isPhysicalDevice;
    }
    return false; // Default assumption
  }
}
