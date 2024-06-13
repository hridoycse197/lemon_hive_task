import 'package:flutter/material.dart';
import 'package:lemon_hive_task/view/view/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home:const SplashScreen(),
    );
  }
}
