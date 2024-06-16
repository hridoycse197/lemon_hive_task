import 'package:flutter/material.dart';
import 'package:lemon_hive_task/utils/helper.dart';
import 'package:lemon_hive_task/view/components/custom_appbar_widget.dart';
import 'package:lemon_hive_task/view/view/home_screen.dart';
import 'package:lemon_hive_task/view_model/data_view_model.dart';
import 'package:provider/provider.dart';

import '../../res/app_colors.dart';
import 'details_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DataViewModel>(
        builder: (context, value, child) => Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                  onTap: (index) {
                    value.setIndex(index);
                  },
                  selectedItemColor: AppColors.primaryColor,
                  unselectedItemColor: AppColors.whiteColor,
                  currentIndex: value.selectedIndex,
                  backgroundColor: AppColors.appOutColor,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_outlined,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person_2), label: 'Cast')
                  ]),
              backgroundColor: AppColors.appBodyColor,
              appBar: KappBar(
                isPrefixIcon: value.selectedIndex != 0,
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IndexedStack(
                  index: value.selectedIndex,
                  children: <Widget>[HomeScreen(), const DetailsScreen()],
                ),
              ),
            ));
  }
}
