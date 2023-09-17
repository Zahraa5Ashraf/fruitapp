import 'package:flutter/material.dart';
import 'package:fruitapp/features/splash/splash_ui.dart';
import 'package:fruitapp/theme/app_theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FruitMarket());
}

class FruitMarket extends StatelessWidget {
  const FruitMarket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme:
          ThemeData(fontFamily: 'Poppins', primaryColor: AppColor.main_color),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
