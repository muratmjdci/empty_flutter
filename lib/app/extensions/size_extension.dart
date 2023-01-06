import 'package:flutter/material.dart';

// extension Responsive on num {
//   // values based on current design
//   double get w => this * Routes.context.width / 375;
//   double get h => this * Routes.context.height / 812;
// }
extension MediaQueryExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension Responsive on BuildContext {
  double height(double value) => value * mediaQuery.size.height / 812;
  double width(double value) => value * mediaQuery.size.width / 375;
}
