
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/Widget/all_expensses/all_expensses_item.dart';

class AllExpenssesItemListView extends StatefulWidget {
  const AllExpenssesItemListView({super.key});

  @override
  State<AllExpenssesItemListView> createState() =>
      _AllExpenssesItemListViewState();
}

class _AllExpenssesItemListViewState extends State<AllExpenssesItemListView> {
 final items = [
     AllExpenssesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        amount: r'$20,129'),
     AllExpenssesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        amount: r'$20,129'),
     AllExpenssesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        amount: r'$20,129'),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // return Row(
    //   children: [
    //     Expanded(
    //       child: GestureDetector(
    //         onTap: () {
    //           updateIndex(0);
    //         },
    //         child: AllExpenssesItem(
    //           isSelected: selectedIndex == 0,
    //           allExpenssesItemModel: items[0],
    //         ),
    //       ),
    //     ),
    //     const SizedBox(
    //       width: 8,
    //     ),
    //     Expanded(
    //       child: GestureDetector(
    //         onTap: () {
    //           updateIndex(1);
    //         },
    //         child: AllExpenssesItem(
    //           isSelected: selectedIndex == 1,
    //           allExpenssesItemModel: items[1],
    //         ),
    //       ),
    //     ),
    //     const SizedBox(
    //       width: 8,
    //     ),
    //     Expanded(
    //       child: GestureDetector(
    //         onTap: () {
    //           updateIndex(2);
    //         },
    //         child: AllExpenssesItem(
    //           isSelected: selectedIndex == 2,
    //           allExpenssesItemModel: items[2],
    //         ),
    //       ),
    //     )
    //   ],
    // );
    return Row(
      // children: items.map((e) => AllExpensessItem(itemModel: e)).toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpenssesItem(
                isSelected: selectedIndex == index,
                allExpenssesItemModel: item,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}