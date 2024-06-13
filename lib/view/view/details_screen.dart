import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/helper.dart';
import '../components/custom_text_widget.dart';
import '../components/space_vertical_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: .2,
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/bg_image.png",
              ))),
      height: fullHeight(context),
      width: fullWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          KText(
            text: 'Ricky Sunraz',
            fontSize: mediaQueryWidth( 20,context),
            fontColor: AppColors.headingTextColor,
          ),
          SpaceVerticalWidget(height: 15),
        ],
      ),
    );
  }
}
