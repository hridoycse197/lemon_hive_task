import 'package:flutter/material.dart';

import '../../res/app_colors.dart';
import '../../utils/helper.dart';

class MainCardItemComponent extends StatelessWidget {
  double height, width;
  Widget child;
  MainCardItemComponent(
      {super.key,
      required this.height,
      required this.width,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: mediaQueryHeight(height, context),
        width: mediaQueryWidth(width, context),
        decoration: kGradientBoxDecoration,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            height: height,
            width: width,
            decoration: kInnerDecoration,
            child: child,
          ),
        ));
  }
}

const kInnerDecoration = BoxDecoration(
  color: AppColors.appBodyColor,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(5),
    topRight: Radius.circular(5),
    bottomRight: Radius.circular(5),
    bottomLeft: Radius.circular(5),
  ),
);

const kGradientBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(5),
    topRight: Radius.circular(5),
    bottomRight: Radius.circular(5),
    bottomLeft: Radius.circular(5),
  ),
  gradient: LinearGradient(
      colors: [AppColors.primaryColor, AppColors.headingTextColor]),
);
