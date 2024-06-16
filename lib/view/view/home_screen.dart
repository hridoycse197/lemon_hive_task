import 'package:flutter/material.dart';
import 'package:lemon_hive_task/res/app_colors.dart';
import 'package:lemon_hive_task/utils/helper.dart';
import 'package:lemon_hive_task/view/components/circular_loader.dart';
import 'package:lemon_hive_task/view/components/custom_text_widget.dart';
import 'package:lemon_hive_task/view/components/space_vertical_widget.dart';
import 'package:lemon_hive_task/view_model/data_view_model.dart';
import 'package:provider/provider.dart';

import '../components/grid_layout_component.dart';
import '../components/main_grid_components.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final ScrollController _scrollController = ScrollController();
  
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataViewModel>(
      context,
    );
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        dataProvider.getData(true);
      }
    });

    return Consumer<DataViewModel>(builder: (context, dataprovider, child) {
      return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                opacity: .2,
                fit: BoxFit.contain,
                image: dataprovider.dataList.isEmpty
                    ? const AssetImage(
                        "assets/images/bg_image.png",
                      )
                    : NetworkImage(
                        dataprovider.dataList.first.image!,
                      ))),
        height: fullHeight(context),
        width: fullWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KText(
              text: 'All Cast',
              fontSize: mediaQueryWidth(
                20,
                context,
              ),
              fontColor: AppColors.headingTextColor,
            ),
            SpaceVerticalWidget(height: 15),
            Expanded(
              child: dataprovider.dataList.isEmpty
                  ? Center(
                      child: KText(
                        text: "No data available",
                        fontColor: AppColors.whiteColor,
                      ),
                    )
                  : Stack(
                      children: [
                        GridView.builder(
                          controller: _scrollController,
                          itemCount: dataprovider.dataList.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCountAndCentralizedLastElement(
                            itemCount: dataprovider.dataList.length,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1 / 1.3,
                          ),
                          itemBuilder: (context, index) {
                            return MainGridItemComponent(
                              item: dataprovider.dataList[index],
                            );
                          },
                        ),
                        if (dataprovider.isLoading)
                          Positioned(
                            bottom: -10,
                            left: 0,
                            right: 0,
                            child: CircularLoader(
                              color: Colors.yellow,
                            ),
                          ),
                      ],
                    ),
            )
          ],
        ),
      );
    });
  }
}
