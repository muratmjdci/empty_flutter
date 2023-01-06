import 'package:flutter/material.dart';

class S {
  const S._();
  static const colors = _Colors();
}

class _Colors {
  const _Colors();
  final primary = const Color(0xff0d327f);
  // final background = const Color(0xffF8F8FA);
  final background = const Color(0xffdde6f6);
  final bottomIconBorder = const Color(0xff0d327f);
  final system = const Color(0xff8454FF);
  final secondary = const Color(0xffFF8D00);
  final button = const Color(0xff6002EE);
  final inactiveButton = const Color(0xff000000);
  final pressedButton = const Color(0xffE8DDFF);
  final unSelected = const Color(0xff79757F);
}

extension Styler on TextStyle {
  TextStyle get text => const TextStyle(
        color: Colors.white,
        fontSize: 12,
      );
  TextStyle get smallTitle => const TextStyle(
        color: Colors.black,
        fontSize: 13,
        fontWeight: FontWeight.w500
      );
  TextStyle get subText => const TextStyle(
        color: Color(0xffC0C8D1),
        fontSize: 12,
      );
  TextStyle get titleText => const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
}
