import 'package:flutter/material.dart';
import 'package:lemon_hive_task/utils/app_colors.dart';
import 'package:lemon_hive_task/utils/helper.dart';
import 'package:lemon_hive_task/view/components/circular_loader.dart';
import 'package:lemon_hive_task/view/components/custom_text_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.splashBgColor,
        height: fullHeight(context),
        width: fullWidth(context),
        child: Stack(
          children: [
            Positioned(
                top: 0,
                right: mediaQueryWidth(context, -60),
                child: Image.asset("assets/images/right_top_vector.png")),
            Positioned(
                top: mediaQueryHeight(
                    context, MediaQuery.of(context).size.height / 2 + 110),
                right: 0,
                child: Image.asset("assets/images/right_center_vector.png")),
            Positioned(
                bottom: -200,
                right: 0,
                child: Image.asset("assets/images/right_bottom_vector.png")),
            Positioned(
                bottom: 0,
                left: -80,
                child: Image.asset("assets/images/left_bottom_vector.png")),
            Positioned(
                top: mediaQueryHeight(
                    context, MediaQuery.of(context).size.height / 2 - 120),
                left: 0,
                child: Image.asset("assets/images/left_center_vector.png")),
            Positioned(
                top: mediaQueryHeight(context, -130),
                left: 0,
                child: Image.asset("assets/images/left_top_vector.png")),
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/main_image.png"),
            )),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    CircularLoader(),
                    KText(
                      text: 'Loading',
                      fontWeight: FontWeight.bold,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
