import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/custom_background_container.dart';
import 'package:responsive_dashboard/views/Widget/income_chart.dart';
import 'package:responsive_dashboard/views/Widget/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        IncomeSectionHeader(),
        SizedBox(
          height: 15,
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: IncomeChart()),
            ],
          ),
        )
      ],
    ));
  }
}
