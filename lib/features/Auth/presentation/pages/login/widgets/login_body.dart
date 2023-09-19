import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruitapp/features/Auth/presentation/pages/complete%20info/complete_info.dart';
import 'package:fruitapp/features/Auth/presentation/pages/complete%20info/widgets/CompleteInfoBody.dart';
import 'package:fruitapp/features/sharedWidgets/buttons/customloginbutton.dart';
import 'package:fruitapp/features/sharedWidgets/sizedbox.dart';
import 'package:fruitapp/features/utils/size_config.dart';
import 'package:get/get.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(value: 18),
        SizedBox(
          height: SizeConfig.defaultSize! * 17,
          child: Image.asset('assets/images/logo.png'),
        ),
        const Text.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              color: Color(0xff69a03a),
            ),
            children: [
              TextSpan(
                text: 'F',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: 'ruit Market',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
        const Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomLoginButton(
                  onTap: () {
                    Get.to(
                      () => const CompleteInfo(),
                      transition: Transition.rightToLeft,
                      duration: const Duration(milliseconds: 500),
                    );
                  },
                  color: const Color(0xFFdb3236),
                  icon: FontAwesomeIcons.googlePlusG,
                  text: 'Log in with',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomLoginButton(
                  onTap: () {
                    Get.to(
                      () => const CompleteInfo(),
                      transition: Transition.rightToLeft,
                      duration: const Duration(milliseconds: 500),
                    );
                  },
                  color: const Color(0xFF4267B2),
                  icon: FontAwesomeIcons.facebookF,
                  text: 'Log in with',
                ),
              ),
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
