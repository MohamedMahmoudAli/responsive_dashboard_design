import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard/views/Widget/custom_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: AllExpensesAndQuickInvoice(),
        )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
