import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lemon_hive_task/view/components/main_card_component.dart';
import 'package:lemon_hive_task/view_model/data_view_model.dart';
import 'package:provider/provider.dart';

import '../../res/app_colors.dart';
import '../../utils/helper.dart';
import '../components/circular_loader.dart';
import '../components/custom_text_widget.dart';
import '../components/space_vertical_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<DataViewModel>(builder: (context, dataprovider, child) {
      return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                opacity: .2,
                fit: BoxFit.fill,
                image: dataprovider.selectedItem?.image == null
                    ? const AssetImage('assets/images/placeholder.png')
                    : NetworkImage(
                        dataprovider.selectedItem?.image ?? "",
                      ))),
        height: fullHeight(context),
        width: fullWidth(context),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              KText(
                text: dataprovider.selectedItem?.name ?? "N/A",
                fontSize: mediaQueryWidth(20, context),
                fontColor: AppColors.headingTextColor,
              ),
              SpaceVerticalWidget(height: 15),
              MainCardItemComponent(
                  height: mediaQueryHeight(300, context),
                  width: mediaQueryWidth(300, context),
                  child: Center(
                    child: dataprovider.selectedItem?.image == null
                        ? Image.asset('assets/images/placeholder.png')
                        : Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: CachedNetworkImage(
                              imageUrl: dataprovider.selectedItem?.image ?? "",
                              placeholder: (context, url) => CircularLoader(
                                color: AppColors.redColor,
                              ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          ),
                  )),
              SpaceVerticalWidget(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainCardItemComponent(
                      height: mediaQueryHeight(120, context),
                      width: mediaQueryWidth(150, context),
                      paddingV: 5,
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
                            text: dataprovider.selectedItem?.status ?? "N/A",
                            fontColor: AppColors.whiteColor,
                            fontSize: mediaQueryWidth(20, context),
                          )
                        ],
                      )),
                  MainCardItemComponent(
                      height: mediaQueryHeight(120, context),
                      width: mediaQueryWidth(150, context),
                      paddingV: 5,
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
                          SizedBox(
                            height: mediaQueryHeight(30, context),
                            width: mediaQueryWidth(150, context),
                            child: KText(
                              maxLines: 1,
                              textOverflow: TextOverflow.ellipsis,
                              text: dataprovider.selectedItem?.species ?? "N/A",
                              fontColor: AppColors.whiteColor,
                              fontSize: mediaQueryWidth(20, context),
                            ),
                          )
                        ],
                      )),
                  MainCardItemComponent(
                      height: mediaQueryHeight(120, context),
                      width: mediaQueryWidth(150, context),
                      paddingV: 5,
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
                            text: dataprovider.selectedItem?.gender ?? "N/A",
                            fontColor: AppColors.whiteColor,
                            fontSize: mediaQueryWidth(20, context),
                          )
                        ],
                      )),
                ],
              ),
              SpaceVerticalWidget(height: 15),
              MainCardItemComponent(
                  height: mediaQueryHeight(120, context),
                  width: mediaQueryWidth(double.infinity, context),
                  paddingV: 5,
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
                            text: dataprovider.selectedItem?.origin?.name ??
                                "N/A",
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
                  )),
              SpaceVerticalWidget(height: 15),
              MainCardItemComponent(
                  height: mediaQueryHeight(120, context),
                  width: mediaQueryWidth(double.infinity, context),
                  paddingV: 5,
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
                            text: dataprovider.selectedItem?.location?.name ??
                                "N/A",
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
                  )),
              SpaceVerticalWidget(height: 15),
              MainCardItemComponent(
                  height: mediaQueryHeight(120, context),
                  width: mediaQueryWidth(double.infinity, context),
                  paddingV: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/episodes.png"),
                      SpaceVerticalWidget(height: 5),
                      KText(
                        text:
                            'Episode(${dataprovider.selectedItem?.episode?.length})',
                        fontColor: AppColors.whiteColor,
                        fontSize: mediaQueryWidth(10, context),
                      ),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: dataprovider.selectedItem?.episode?.length,
                          itemBuilder: (context, index) {
                            final episode =
                                dataprovider.selectedItem?.episode![index];
                            return Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: mediaQueryWidth(10, context),
                                  color: AppColors.whiteColor,
                                ),
                                KText(
                                  text: episode ?? "",
                                  fontSize: mediaQueryWidth(18, context),
                                  fontColor: AppColors.whiteColor,
                                )
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      );
    });
  }
}
