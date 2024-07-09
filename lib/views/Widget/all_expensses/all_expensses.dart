import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/all_expensses/all_expensses_item_list_view.dart';
import 'package:responsive_dashboard/views/Widget/custom_background_container.dart';
import 'all_expensses_header.dart';

class AllExpensses extends StatelessWidget {
  const AllExpensses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpenssesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpenssesItemListView()
        ],
      ),
    );
  }
}


