import 'package:flutter/material.dart';
import 'package:lemon_hive_task/view/view/details_screen.dart';
import 'package:lemon_hive_task/view/view/main_screen.dart';
import 'package:lemon_hive_task/view/view/splash_screen.dart';

import 'routes_name.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.main:
        return MaterialPageRoute(
            builder: (BuildContext context) => MainScreen());

      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());
  case RoutesName.detailsPage:
        return MaterialPageRoute(
            builder: (BuildContext context) => const DetailsScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('No route defined'),
                  ),
                ));
    }
  }
}
