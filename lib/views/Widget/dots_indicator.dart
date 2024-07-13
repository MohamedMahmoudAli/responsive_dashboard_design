import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => const Padding(
                padding: EdgeInsets.only(right: 8),
                child: CustomDotIndicator(isActive: true),
              )),
    );
  }
}
