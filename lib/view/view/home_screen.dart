import 'package:flutter/material.dart';
import 'package:lemon_hive_task/utils/app_colors.dart';
import 'package:lemon_hive_task/utils/helper.dart';
import 'package:lemon_hive_task/view/components/custom_text_widget.dart';
import 'package:lemon_hive_task/view/components/space_vertical_widget.dart';

import '../components/grid_layout_component.dart';
import '../components/main_grid_components.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List s = [
    's',
    'd',
    'd',
    'g',
    'j',
    's',
    'd',
    'd',
    'g',
    'j',
    's',
    'd',
    'd',
    'g',
    'l'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: .2,
              fit: BoxFit.contain,
              image: AssetImage(
                "assets/images/bg_image.png",
              ))),
      height: fullHeight(context),
      width: fullWidth(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KText(
            text: 'All Cast',
            fontSize: mediaQueryWidth(20,context, ),
            fontColor: AppColors.headingTextColor,
          ),
          SpaceVerticalWidget(height: 15),
          Expanded(
            child: GridView.builder(
              itemCount: s.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCountAndCentralizedLastElement(
                itemCount: s.length,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1 / 1.3,
              ),
              itemBuilder: (context, index) {
                return const MainGridItemComponent();
              },
            ),
          )
        ],
      ),
    );
  }
}
