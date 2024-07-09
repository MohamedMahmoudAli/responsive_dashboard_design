import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensses_item_model.dart';
import 'package:responsive_dashboard/views/Widget/all_expensses/active_selected_all_expense_item.dart';
import 'package:responsive_dashboard/views/Widget/all_expensses/inactive_selected_all_expense_item.dart';

class AllExpenssesItem extends StatefulWidget {
  const AllExpenssesItem(
      {super.key,
      required this.allExpenssesItemModel,
      required this.isSelected});
  final AllExpenssesItemModel allExpenssesItemModel;
  final bool isSelected;

  @override
  State<AllExpenssesItem> createState() => _AllExpenssesItemState();
}

class _AllExpenssesItemState extends State<AllExpenssesItem> {
  @override
  Widget build(BuildContext context) {
    return widget.isSelected
        ? SelectedAllExpenseItem(
            allExpenssesItemModel: widget.allExpenssesItemModel)
        : InSelectedAllExpenseItem(
            allExpenssesItemModel: widget.allExpenssesItemModel);
  }
}
