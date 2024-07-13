import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/views/Widget/dots_indicator.dart';
import 'package:responsive_dashboard/views/Widget/my_cards_page_view.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "MY Card",
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        const MyCardsPageView(),
        const SizedBox(
          height: 20,
        ),
        const DotsIndicator()
      ],
    );
  }
}
