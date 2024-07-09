import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensses_item_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/views/Widget/all_expensse_item_header.dart';

class AllExpenssesItem extends StatelessWidget {
  const AllExpenssesItem({super.key, required this.allExpenssesItemModel});
  final AllExpenssesItemModel allExpenssesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color(0xFFF1F1F1),
              ),
              borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensseItemHeader(image: allExpenssesItemModel.image),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpenssesItemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpenssesItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpenssesItemModel.amount,
            style: AppStyles.styleSemiBold24(context),
          )
        ],
      ),
    );
  }
}
