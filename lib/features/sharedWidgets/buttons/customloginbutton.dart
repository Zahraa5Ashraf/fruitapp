import 'package:flutter/material.dart';
import 'package:fruitapp/features/sharedWidgets/sizedbox.dart';
import 'package:fruitapp/features/utils/size_config.dart';
import 'package:fruitapp/theme/app_theme.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton(
      {super.key, this.onTap, this.text, this.icon, this.color});

  final VoidCallback? onTap;
  final String? text;
  final IconData? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth!,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColor.border,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color,
            ),
            HorizontalSpace(
              value: 2,
            ),
            Text(
              
              text!,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: AppColor.text3,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
