import 'package:flutter/material.dart';

import '../../utils/helper.dart';

class SpaceVerticalWidget extends StatelessWidget {
  double height;

  SpaceVerticalWidget({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mediaQueryWidth(height,context, ),
    );
  }
}
