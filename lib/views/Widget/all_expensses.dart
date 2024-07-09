import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'all_expensses_header.dart';
import 'package:responsive_dashboard/views/Widget/all_expensses_item.dart';

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
      child: Column(
        children: [
          const AllExpenssesHeader(),
          AllExpenssesItem(
            allExpenssesItemModel: AllExpenssesItemModel(
                image: Assets.imagesIncome,
                title: "title",
                date: " date",
                amount: "20"),
          )
        ],
      ),
    );
  }
}
