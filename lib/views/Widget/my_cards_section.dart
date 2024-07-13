import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/views/Widget/dots_indicator.dart';
import 'package:responsive_dashboard/views/Widget/my_cards_page_view.dart';

class MyCards extends StatefulWidget {
  const MyCards({super.key});

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  late PageController pageController;
  late int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      log(currentIndex.toString());
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            "MY Card",
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotsIndicator(
          activeIndex: currentIndex,
        )
      ],
    );
  }
}
