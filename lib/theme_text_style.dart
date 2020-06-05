import 'package:flutter/material.dart';

class ThemeTextStyle {
  static TextStyle title(BuildContext context) {
    return Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 20.0);
  }

  static TextStyle highlight(BuildContext context) {
    return Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 40.0);
  }
}