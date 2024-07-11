import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/allExpenses_and_quick_invoice.dart';
import 'package:responsive_dashboard/views/Widget/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        AllExpensesAndQuickInvoice(),
        Column()
      ],
    );
  }
}

