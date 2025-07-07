import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'app_bar_leading.dart';

class RoundedAppBar extends AppBar {
  final String? titleText;

  final Color bgColor;
  final Color textColor;
  final void Function()? onTap;
  final List<Widget>? options;
  final bool showBackButton;

  RoundedAppBar({
    this.titleText,
    this.textColor = Colors.black,
    this.bgColor = whiteColor,
    this.onTap,
    this.options,
    this.showBackButton = true,
    super.key,
  }) : super(
          titleSpacing: 0,
          backgroundColor: bgColor,
          leading: showBackButton?  const AppbarLeading():const SizedBox.shrink(),
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
              color: textColor, fontSize: 18, fontWeight: FontWeight.w600),
          title: titleText != null ? Text(titleText) : null,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          actions: options,
        );
}
