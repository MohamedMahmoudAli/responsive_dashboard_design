import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensses_item_model.dart';
import 'package:responsive_dashboard/views/Widget/all_expensses/active_selected_all_expense_item.dart';
import 'package:responsive_dashboard/views/Widget/all_expensses/inactive_selected_all_expense_item.dart';

class AllExpenssesItem extends StatelessWidget {
  const AllExpenssesItem(
      {super.key,
      required this.allExpenssesItemModel,
      required this.isSelected});
  final AllExpenssesItemModel allExpenssesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? SelectedAllExpenseItem(allExpenssesItemModel: allExpenssesItemModel)
        : InSelectedAllExpenseItem(
            allExpenssesItemModel: allExpenssesItemModel);
  }
}
