import 'package:flutter/material.dart';
import 'package:fruitapp/features/onBoarding/presentation/widgets/custom_indicator.dart';
import 'package:fruitapp/features/onBoarding/presentation/widgets/custom_page.dart';
import 'package:fruitapp/features/sharedWidgets/buttons/generalButton.dart';
import 'package:fruitapp/features/utils/size_config.dart';
import 'package:fruitapp/theme/app_theme.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);
  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPage(
          pageController: pageController,
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: SizeConfig.defaultSize! * 24,
            child: CustomIndicator(
              dotindex: pageController!.hasClients
                  ? pageController!.page?.toInt()
                  : 0,
            )),
        Visibility(
          visible: pageController!.hasClients
              ? pageController?.page == 2
                  ? false
                  : true
              : true,
          child: Positioned(
              top: SizeConfig.defaultSize! * 10,
              right: 32,
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColor.text2,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Positioned(
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: GeneralButton(
              text: pageController!.hasClients
                  ? pageController?.page == 2
                      ? 'Get Starterd'
                      : 'Next'
                  : 'Next'),
        ),
      ],
    );
  }
}
