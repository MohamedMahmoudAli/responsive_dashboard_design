import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/Widget/all_expensses_item_list_view.dart';
import 'all_expensses_header.dart';

class AllExpensses extends StatelessWidget {
  const AllExpensses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: const Column(
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
