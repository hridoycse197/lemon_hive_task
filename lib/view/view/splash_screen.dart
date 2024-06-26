import 'package:flutter/material.dart';
import 'package:lemon_hive_task/res/app_colors.dart';
import 'package:lemon_hive_task/services/splash_services.dart';
import 'package:lemon_hive_task/utils/helper.dart';
import 'package:lemon_hive_task/view/components/circular_loader.dart';
import 'package:lemon_hive_task/view/components/custom_text_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  Future<void> _initialize(BuildContext context) async {
    await SplashServices.init(context);
  }

  @override
  Widget build(BuildContext context) {
    _initialize(context);
    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        height: fullHeight(context),
        width: fullWidth(context),
        child: Stack(
          children: [
            Positioned(
                top: 0,
                right: mediaQueryWidth(
                  -60,
                  context,
                ),
                child: Image.asset("assets/images/right_top_vector.png")),
            Positioned(
                top: mediaQueryHeight(
                  MediaQuery.of(context).size.height / 2 + 110,
                  context,
                ),
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
                  MediaQuery.of(context).size.height / 2 - 120,
                  context,
                ),
                left: 0,
                child: Image.asset("assets/images/left_center_vector.png")),
            Positioned(
                top: mediaQueryHeight(
                  -130,
                  context,
                ),
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
