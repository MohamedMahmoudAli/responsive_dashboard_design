import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/views/Widget/custom_background_container.dart';
import 'package:responsive_dashboard/views/Widget/quick_invoice/custom_textfield.dart';
import 'package:responsive_dashboard/views/Widget/quick_invoice/latest_transaction.dart';
import 'package:responsive_dashboard/views/Widget/quick_invoice/quick_invoice_form.dart';
import 'package:responsive_dashboard/views/Widget/quick_invoice/quick_invoice_header.dart';
import 'package:responsive_dashboard/views/Widget/quick_invoice/title_test_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm()
        ],
      ),
    ));
  }
}
