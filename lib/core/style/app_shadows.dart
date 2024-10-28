import 'package:flutter/cupertino.dart';

/// App shadows keep class.
class AppShadows {
  static const defaultShadow = [
    BoxShadow(
      offset: Offset(0, 2),
      blurRadius: 24,
      color: Color(0x00C9C9C9),
    ),
  ];

  static const shadowSecondary = [
    BoxShadow(
      offset: Offset(0, 2),
      blurRadius: 4,
      color: Color.fromRGBO(201, 201, 201, 0.14),
    ),
  ];
}
