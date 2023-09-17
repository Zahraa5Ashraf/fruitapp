import 'package:flutter/material.dart';
import 'package:fruitapp/features/onBoarding/presentation/widgets/custom_item.dart';

class CustomPage extends StatelessWidget {
  const CustomPage({Key? key,@required this.pageController}) : super(key: key);
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        CustomItem(
          title: 'E Shopping',
          subtitle: 'Explore top organic fruit & grab item',
          image: 'assets/images/onboarding1.png',
        ),
        CustomItem(
          title: 'Delivery on the way',
          subtitle: 'Get your order by speed delivery',
          image: 'assets/images/onboarding2.png',
        ),
        CustomItem(
          title: 'Delivery Arrived',
          subtitle: 'Order is arrived at your place',
          image: 'assets/images/onboarding3.png',
        ),
      ],
    );
  }
}
