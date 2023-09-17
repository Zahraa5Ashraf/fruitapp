import 'package:flutter/material.dart';
import 'package:fruitapp/features/sharedWidgets/sizedbox.dart';
import 'package:fruitapp/features/utils/size_config.dart';
import 'package:fruitapp/theme/app_theme.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key, this.title, this.subtitle, this.image});
  final String? title;
  final String? subtitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(
          value: 18,
        ),
        SizedBox(
            height: SizeConfig.defaultSize! * 20, child: Image.asset(image!)),
        const VerticalSpace(
          value: 2.5,
        ),
        Text(
          title!,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColor.text3,
            fontSize: 20,
          ),
        ),
        const VerticalSpace(
          value: 1,
        ),
        Text(
          subtitle!,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: AppColor.text3,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
