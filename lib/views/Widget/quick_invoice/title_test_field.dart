import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/views/Widget/quick_invoice/custom_textfield.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});
  final String title,hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Customer Name", style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 12,),
         CustomTextField(hint: hint,)
      ],
    );
  }
}
