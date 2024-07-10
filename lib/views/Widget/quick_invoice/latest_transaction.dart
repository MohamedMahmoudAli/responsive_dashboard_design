import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/views/Widget/quick_invoice/lates_transaction_lsit_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Latest Transaction", style: AppStyles.styleMedium16(context)),
        const SizedBox(
          height: 16,
        ),
        LatestTransactionListView()
      ],
    );
  }
}
