import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const MyCard();
      },
    );
  }
}
