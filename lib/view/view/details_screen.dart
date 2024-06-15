import 'package:flutter/material.dart';
import 'package:lemon_hive_task/view/components/main_card_component.dart';

import '../../res/app_colors.dart';
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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            KText(
              text: 'Ricky Sunraz',
              fontSize: mediaQueryWidth(20, context),
              fontColor: AppColors.headingTextColor,
            ),
            SpaceVerticalWidget(height: 15),
            MainCardItemComponent(
                height: mediaQueryHeight(300, context),
                width: mediaQueryWidth(300, context),
                child: Center(
                  child: Image.asset("assets/images/bg_image.png"),
                )),
            SpaceVerticalWidget(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainCardItemComponent(
                    height: mediaQueryHeight(120, context),
                    width: mediaQueryWidth(150, context),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/alive_icon.png"),
                          SpaceVerticalWidget(height: 5),
                          KText(
                            text: 'Status',
                            fontColor: AppColors.whiteColor,
                            fontSize: mediaQueryWidth(10, context),
                          ),
                          KText(
                            text: 'Alive',
                            fontColor: AppColors.whiteColor,
                            fontSize: mediaQueryWidth(20, context),
                          )
                        ],
                      ),
                    )),
                MainCardItemComponent(
                    height: mediaQueryHeight(120, context),
                    width: mediaQueryWidth(150, context),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/human_icon.png"),
                          SpaceVerticalWidget(height: 5),
                          KText(
                            text: 'Species',
                            fontColor: AppColors.whiteColor,
                            fontSize: mediaQueryWidth(10, context),
                          ),
                          KText(
                            text: 'Human',
                            fontColor: AppColors.whiteColor,
                            fontSize: mediaQueryWidth(20, context),
                          )
                        ],
                      ),
                    )),
                MainCardItemComponent(
                    height: mediaQueryHeight(120, context),
                    width: mediaQueryWidth(150, context),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/gender_icon.png"),
                          SpaceVerticalWidget(height: 5),
                          KText(
                            text: 'Gender',
                            fontColor: AppColors.whiteColor,
                            fontSize: mediaQueryWidth(10, context),
                          ),
                          KText(
                            text: 'Male',
                            fontColor: AppColors.whiteColor,
                            fontSize: mediaQueryWidth(20, context),
                          )
                        ],
                      ),
                    )),
              ],
            ),
            SpaceVerticalWidget(height: 15),
            MainCardItemComponent(
                height: mediaQueryHeight(120, context),
                width: mediaQueryWidth(double.infinity, context),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/earth_icon.png"),
                      SpaceVerticalWidget(height: 5),
                      KText(
                        text: 'Origin',
                        fontColor: AppColors.whiteColor,
                        fontSize: mediaQueryWidth(10, context),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KText(
                            text: 'Earth (C17-52)',
                            fontColor: AppColors.whiteColor,
                            fontSize: mediaQueryWidth(20, context),
                          ),
                          GestureDetector(
                              child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Image.asset("assets/images/arrow_icon.png"),
                          )),
                        ],
                      ),
                    ],
                  ),
                )),
            SpaceVerticalWidget(height: 15),
            MainCardItemComponent(
                height: mediaQueryHeight(120, context),
                width: mediaQueryWidth(double.infinity, context),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/last_location.png"),
                      SpaceVerticalWidget(height: 5),
                      KText(
                        text: 'Last known location',
                        fontColor: AppColors.whiteColor,
                        fontSize: mediaQueryWidth(10, context),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KText(
                            text: 'Citadel of California',
                            fontColor: AppColors.whiteColor,
                            fontSize: mediaQueryWidth(20, context),
                          ),
                          GestureDetector(
                              child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Image.asset("assets/images/arrow_icon.png"),
                          )),
                        ],
                      ),
                    ],
                  ),
                )),
            SpaceVerticalWidget(height: 15),
            MainCardItemComponent(
                height: mediaQueryHeight(120, context),
                width: mediaQueryWidth(double.infinity, context),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/episodes.png"),
                      SpaceVerticalWidget(height: 5),
                      KText(
                        text: 'Episode(s)',
                        fontColor: AppColors.whiteColor,
                        fontSize: mediaQueryWidth(10, context),
                      ),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: mediaQueryWidth(10, context),
                                  color: AppColors.whiteColor,
                                ),
                                KText(
                                  text: '  Episodes name',
                                  fontSize: mediaQueryWidth(18, context),
                                  fontColor: AppColors.whiteColor,
                                )
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
