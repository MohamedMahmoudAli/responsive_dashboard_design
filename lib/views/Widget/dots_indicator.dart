import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.activeIndex});
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) =>  Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CustomDotIndicator(isActive:  index== activeIndex),
              )),
    );
  }
}
