import 'package:flutter/material.dart';

import '../../model/charecter_list_model.dart';
import '../../res/app_colors.dart';
import '../../utils/helper.dart';
import 'custom_text_widget.dart';

class MainGridItemComponent extends StatelessWidget {
  Results item;
  MainGridItemComponent({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: mediaQueryHeight(500.0, context),
            width: 500,
            decoration: kGradientBoxDecoration,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                height: 500.0,
                width: 500,
                decoration: kInnerDecoration,
              ),
            )),
        Positioned(
          top: 2,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 150,
                margin: const EdgeInsets.only(bottom: 15, right: 15),
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(item.image!),
                )),
              ),
              KText(
                text: 'Smith',
                fontSize: mediaQueryWidth(20, context),
                fontColor: AppColors.whiteColor,
              )
            ],
          ),
        ),
      ],
    );
  }
}

const kInnerDecoration = BoxDecoration(
  color: AppColors.appBodyColor,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(5),
    topRight: Radius.circular(5),
    bottomRight: Radius.circular(70),
    bottomLeft: Radius.circular(5),
  ),
);

const kGradientBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(5),
    topRight: Radius.circular(5),
    bottomRight: Radius.circular(70),
    bottomLeft: Radius.circular(5),
  ),
  gradient: LinearGradient(
      colors: [AppColors.primaryColor, AppColors.headingTextColor]),
);

class BottomRightCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 20);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
