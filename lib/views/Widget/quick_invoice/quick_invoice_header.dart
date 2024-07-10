import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox(width: 16)),
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: const Center(
              child: Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          )),
        ),
      ],
    );
  }
}
