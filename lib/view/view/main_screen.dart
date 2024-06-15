import 'package:flutter/material.dart';
import 'package:lemon_hive_task/utils/helper.dart';
import 'package:lemon_hive_task/view/components/custom_appbar_widget.dart';
import 'package:lemon_hive_task/view/view/home_screen.dart';

import '../../res/app_colors.dart';
import 'details_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  List<Widget> pages = [HomeScreen(), const DetailsScreen()];

  final ValueNotifier selectedIndex = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context, value, child) => Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                  onTap: (index) {
                    kLog(index);
                    selectedIndex.value = index;
                  },
                  selectedItemColor: AppColors.primaryColor,
                  unselectedItemColor: AppColors.whiteColor,
                  currentIndex: selectedIndex.value,
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
                isPrefixIcon: selectedIndex.value != 0,
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: pages[selectedIndex.value],
              ),
            ));
  }
}
