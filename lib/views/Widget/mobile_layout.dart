import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard/views/Widget/income_section.dart';
import 'package:responsive_dashboard/views/Widget/my_card_and_transaction_history.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoice(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransactioHistory(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}