// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:lemon_hive_task/utils/routes/routes_name.dart';
import 'package:lemon_hive_task/view_model/data_view_model.dart';
import 'package:provider/provider.dart';

class SplashServices {
  SplashServices._();
  static Future<void> init(BuildContext context) async {
    final provider = Provider.of<DataViewModel>(context, listen: false);

    await Future.delayed(const Duration(seconds: 4));
    final data = await provider.getDataFromLocal();

    if (data.isEmpty) {
      await provider.getData(false);
    }
    Navigator.pushReplacementNamed(context, RoutesName.main);
  }
}
