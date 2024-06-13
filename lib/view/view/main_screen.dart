import 'package:flutter/material.dart';
import 'package:lemon_hive_task/view/components/custom_appbar_widget.dart';
import 'package:lemon_hive_task/view/view/home_screen.dart';

import '../../utils/app_colors.dart';
import 'details_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  List<Widget> pages = [HomeScreen(), const DetailsScreen()];
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.whiteColor,
          currentIndex: 1,
          backgroundColor: AppColors.appOutColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Home')
          ]),
      backgroundColor: AppColors.appBodyColor,
      appBar: KappBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: pages[selectedPage],
      ),
    );
  }
}
