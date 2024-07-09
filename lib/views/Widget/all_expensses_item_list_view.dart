import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/Widget/all_expensses_item.dart';

class AllExpenssesItemListView extends StatelessWidget {
  const AllExpenssesItemListView({super.key});
  static List<AllExpenssesItemModel> itemModel = [
    AllExpenssesItemModel(
        image: Assets.imagesBalance,
        title: "Blance",
        date: " April 20, 2022",
        amount: r"$20.123"),
    AllExpenssesItemModel(
        image: Assets.imagesIncome,
        title: "Income",
        date: " April 20, 2022",
        amount: r"$20.123"),
    AllExpenssesItemModel(
        image: Assets.imagesExpenses,
        title: "Expense",
        date: " April 20, 2022",
        amount: r"$20.123"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: itemModel.length,
          itemBuilder: ((context, index) => AllExpenssesItem(
                allExpenssesItemModel: itemModel[index],
              ))),
    );
  }
}
