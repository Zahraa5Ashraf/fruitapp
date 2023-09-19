import 'package:flutter/material.dart';
import 'package:fruitapp/features/Auth/presentation/pages/complete%20info/widgets/completeinfoitem.dart';
import 'package:fruitapp/features/sharedWidgets/buttons/generalButton.dart';
import 'package:fruitapp/features/sharedWidgets/sizedbox.dart';

class CompleteInfoBody extends StatelessWidget {
  const CompleteInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          Expanded(child: SizedBox()),
          CompleteInfoItem(text: 'Full Name'),
          VerticalSpace(
            value: 2,
          ),
          CompleteInfoItem(text: 'Phone Number'),
          VerticalSpace(
            value: 2,
          ),
          CompleteInfoItem(text: 'Address'),
          VerticalSpace(
            value: 5,
          ),
          GeneralButton(
            text: 'Login',
          ),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
