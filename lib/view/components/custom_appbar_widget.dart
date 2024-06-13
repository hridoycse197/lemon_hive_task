import 'package:flutter/material.dart';
import '../../utils/helper.dart';
import 'custom_text_widget.dart';
import 'space_horizontal_widget.dart';

class KappBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  bool isTrailingIcon;
  KappBar({super.key, required this.title, this.isTrailingIcon = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      centerTitle: true,
      actions: [
        isTrailingIcon
            ? GestureDetector(
                onTap: () {
                },
                child: const Icon(
                  Icons.search,
                  color: Color(0xffb222455),
                ),
              )
            : const SizedBox.shrink(),
        SpaceHorizontalWidget(width: 10)
        
      ],
      title: KText(
        fontSize: mediaQueryWidth(context,17.5),
        text: title,
        fontWeight: FontWeight.w700,
        fontColor: Color(0xff222455),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
