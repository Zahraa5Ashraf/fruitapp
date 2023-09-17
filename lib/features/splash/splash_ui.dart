import 'package:flutter/material.dart';
import 'package:fruitapp/features/splash/widgets/splash_body.dart';
import 'package:fruitapp/theme/app_theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.main_color,
      body: const SplashBody(),
    );
  }
}
