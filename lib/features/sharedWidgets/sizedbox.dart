import 'package:flutter/material.dart';
import 'package:fruitapp/features/utils/size_config.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({super.key, this.value});
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({super.key, this.value});
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}
