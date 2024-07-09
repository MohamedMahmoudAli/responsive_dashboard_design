import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/Widget/all_expensses/all_expensses_item.dart';

class AllExpenssesItemListView extends StatefulWidget {
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
  State<AllExpenssesItemListView> createState() =>
      _AllExpenssesItemListViewState();
}

class _AllExpenssesItemListViewState extends State<AllExpenssesItemListView> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: AllExpenssesItemListView.itemModel.asMap().entries.map((e) {
      if (e.key == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                updateIndex(activeIndex);
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: AllExpenssesItem(
                allExpenssesItemModel: e.value,
                isSelected: activeIndex == e.key ? true : false,
              ),
            ),
          ),
        );
      } else {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                updateIndex(activeIndex);
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: AllExpenssesItem(
                allExpenssesItemModel: e.value,
                isSelected: activeIndex == e.key ? true : false,
              ),
            ),
          ),
        );
      }
    }).toList());
  }

  void updateIndex(int activeIndex) {
    setState(() {
      activeIndex = activeIndex;
    });
  }
}
