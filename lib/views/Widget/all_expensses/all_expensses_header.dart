import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/views/Widget/range_options.dart';

class AllExpenssesHeader extends StatelessWidget {
  const AllExpenssesHeader({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangOptions()
      ],
    );
  }
}
