import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/custom_button.dart';
import 'package:responsive_dashboard/views/Widget/quick_invoice/title_test_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hint: "Customer Name",
                title: 'Type Customer Name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(
                    title: "Customer Email", hint: "Type Customer Email"))
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hint: "Item Name",
                title: 'Type Customer Item Name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(child: TitleTextField(title: "Item amount", hint: "USD"))
          ],
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              title: 'Add More Details',
              backgroundColor: Color(0xff),
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: CustomButton(
              title: 'Send Money',
            )),
          ],
        )
      ],
    );
  }
}
