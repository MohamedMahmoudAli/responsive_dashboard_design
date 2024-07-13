import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard/views/Widget/custom_dot_indicator.dart';
import 'package:responsive_dashboard/views/Widget/custom_drawer.dart';
import 'package:responsive_dashboard/views/Widget/dots_indicator.dart';
import 'package:responsive_dashboard/views/Widget/my_cards_page_view.dart';
import 'package:responsive_dashboard/views/Widget/my_cards_section.dart';

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
        SizedBox(
          width: 24,
        ),
        Expanded(
            child: MyCards(),
            ),
      ],
    );
  }
}
