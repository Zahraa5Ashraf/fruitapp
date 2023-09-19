import 'package:flutter/material.dart';
import 'package:fruitapp/features/utils/size_config.dart';
import 'package:fruitapp/theme/app_theme.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key, this.text, this.onTap});
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
            color: AppColor.main_color, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              fontSize: 14,
              color: AppColor.text1,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
