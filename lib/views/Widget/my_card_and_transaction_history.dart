import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/custom_background_container.dart';
import 'package:responsive_dashboard/views/Widget/my_cards_section.dart';
import 'package:responsive_dashboard/views/Widget/transaction_history.dart';

class MyCardsAndTransactioHistory extends StatelessWidget {
  const MyCardsAndTransactioHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        MyCards(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        TransactionHistory(),
      ],
    ));
  }
}
