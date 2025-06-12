import 'package:flutter/material.dart';

class ResponsiveHelper {
  static int getCrossAxisCount(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width >= 600) return 3;
    return 2;
  }
}