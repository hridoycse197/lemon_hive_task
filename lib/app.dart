import 'package:flutter/material.dart';
import 'package:lemon_hive_task/utils/routes/routes_name.dart';
import 'package:lemon_hive_task/view_model/data_view_model.dart';
import 'package:provider/provider.dart';

import 'utils/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => DataViewModel(),
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: RoutesName.splash,
            onGenerateRoute: Routes.generateRoute,
          );
        });
  }
}
