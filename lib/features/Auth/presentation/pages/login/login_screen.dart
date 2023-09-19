import 'package:flutter/material.dart';
import 'package:fruitapp/features/Auth/presentation/pages/login/widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginBody(),
    );
  }
}
