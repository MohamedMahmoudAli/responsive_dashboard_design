import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/all_expensses/all_expensses.dart';
import 'package:responsive_dashboard/views/Widget/custom_drawer.dart';
import 'package:responsive_dashboard/views/Widget/quick_invoice/quick_invoice.dart';

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
        Expanded(
          flex: 3,
          child: Column(
            children: [
              AllExpensses(),
              SizedBox(
                height: 24,
              ),
              QuickInvoice()
            ],
          ),
        ),
        Column()
      ],
    );
  }
}
