import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/all_expensses/all_expensses.dart';
import 'package:responsive_dashboard/views/Widget/quick_invoice/quick_invoice.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 2,
      // todo: implement desktop layout
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            AllExpensses(),
            SizedBox(
              height: 24,
            ),
            QuickInvoice()
          ],
        ),
      ),
    );
  }
}
