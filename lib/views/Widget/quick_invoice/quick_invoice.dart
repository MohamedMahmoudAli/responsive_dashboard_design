import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/custom_background_container.dart';
import 'package:responsive_dashboard/views/Widget/quick_invoice/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(child: QuickInvoiceHeader());
  }
}
