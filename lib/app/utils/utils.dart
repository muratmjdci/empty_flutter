import 'dart:io';

import 'package:flutter/material.dart';

import '../../components/loader_widget.dart';

bool isDialogOpen = false;

class Utils {
  const Utils();
  static const show = _Show();
  String get getDeviceOS => Platform.isAndroid ? 'android' : 'ios';

  static void closeKeyboard(BuildContext c) {
    FocusScope.of(c).requestFocus(FocusNode());
  }

  // static String getBase64(Uint8List image) {
  //   return "data:image/png;base64,${base64Encode(image)}=";
  // }

  // static String formatDate(DateTime date, [bool withYear = false]) {
  //   return '${date.day.toString()} ${_getMonth(date.month)} ${withYear ? "${date.year}" : ""}';
  // }

  // Future<Locator.LocationData> getCurrentLocation() async {
  //   final location = await Locator.Location.instance.getLocation();

  //   return location;
  // }

  // Future<Placemark> getAddressFromCoordinates(lat, lng) async {
  //   final List<Placemark> placemark = await placemarkFromCoordinates(lat, lng);
  //   return placemark.first;
  // }

  // Future<Placemark> getAddress() async {
  //   final Locator.LocationData location = await getCurrentLocation();
  //   // 37.16048466828982, 38.7880411336598
  //   final Placemark address = await getAddressFromCoordinates(
  //     37.16048466828982,
  //     38.7880411336598,
  //   );
  //   Print.log(address.administrativeArea);
  //   return address;
  // }

  // static Future<String> getDeviceID() async {
  //   final device = await DeviceInfoPlugin().deviceInfo;
  //   return device.toMap()['id'];
  // }

  // static String getUUID(Ref ref) => ref.read(storageService).get('uuid') ?? '';

  // static Future<String?> getDeviceOSVersion() async {
  //   final device = await DeviceInfoPlugin().deviceInfo;
  //   if (Platform.isAndroid) {
  //     return device.toMap()['version']['release'];
  //   } else {
  //     return (device as IosDeviceInfo).systemVersion;
  //   }
  // }

  // static Future<String> getDeviceModel() async {
  //   final device = await DeviceInfoPlugin().deviceInfo;
  //   return device.toMap()['model'];
  // }

}
/* 
class _Validators {
  // const _Validators();

  // /// makes the textfield is required
  // String? empty(String? value) {
  //   if (value == '' || value == null) {
  //     return 'enter-text';
  //   }
  //   return null;
  // }

  // String? minChar(String? value) {
  //   if (value!.isEmpty) {
  //     return 'enter-text'.tr;
  //   } else {
  //     if (value.length < 10) {
  //       return 'min-character'.trArgs(['10']);
  //     }
  //   }
  //   return null;
  // }

  // String? minMaxChar(String? value) {
  //   if (value!.isEmpty) {
  //     return 'enter-text'.tr;
  //   } else {
  //     if (value.length < 5) {
  //       return 'min-character'.trArgs(['5']);
  //     }
  //     if (value.length > 50) {
  //       return 'max-character'.trArgs(['50']);
  //     }
  //   }
  //   return null;
  // }

  // String? phone(String? value) {
  //   if (value!.isEmpty) {
  //     return 'enter-text'.tr;
  //   } else {
  //     if (value.length < 9) {
  //       return 'invalid-phone'.tr;
  //     }
  //   }
  //   return null;
  // }

  // String? password(String? value) {
  //   if (value!.isEmpty) {
  //     return 'enter-text'.tr;
  //   } else {
  //     if (value.length < 6) {
  //       return 'min-6-chars'.tr;
  //     }
  //   }
  //   return null;
  // }

  // String? email(String? value) {
  //   final isEmail = RegExp(
  //     r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  //   ).hasMatch(value!);
  //   if (value.isEmpty) {
  //     return 'enter-text'.tr;
  //   } else if (!isEmail) {
  //     return 'invalid-email'.tr;
  //   }
  //   return null;
  // }

  // /// validates the passwords match
  // String? confirmPassword(String? value, String? newValue) {
  //   if (value != newValue) {
  //     return 'passwords-doesnt-match'.tr;
  //   }
  //   return null;
  // }
} */

class _Show {
  const _Show();

  void showLoadingDialog(BuildContext c) {
    isDialogOpen = true;
    showDialog(
      context: c,
      builder: (c) => const LoaderWidget.dialog(),
    ).then((value) => isDialogOpen = false);
  }
}
