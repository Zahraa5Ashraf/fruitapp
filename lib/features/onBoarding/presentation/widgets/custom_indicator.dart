import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruitapp/theme/app_theme.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({Key? key,@required this.dotindex}) : super(key: key);
  final int? dotindex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          color: Colors.transparent,
          activeColor: AppColor.main_color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: AppColor.main_color,
              ))),
      dotsCount: 3,
      
      position: dotindex!,
    );
  }
}
