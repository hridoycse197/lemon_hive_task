import 'package:flutter/material.dart';
import 'package:lemon_hive_task/utils/app_colors.dart';
import '../../utils/helper.dart';
import 'custom_text_widget.dart';
import 'space_horizontal_widget.dart';

class KappBar extends StatelessWidget implements PreferredSizeWidget {
  bool isPrefixIcon;
  KappBar({super.key, this.isPrefixIcon = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          leading: isPrefixIcon
              ? GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.whiteColor,
                  ),
                )
              : const SizedBox.shrink(),
          backgroundColor: AppColors.appOutColor,
          elevation: 2,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Image.asset('assets/images/appbar_icon.png'),
          ),
        ),
        const Divider(
          thickness: 0.5,
          height: 0.5,
          color: AppColors.whiteColor,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 0.5);
}
