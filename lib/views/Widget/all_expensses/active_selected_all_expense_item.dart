import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensses_item_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/views/Widget/all_expensses/all_expensse_item_header.dart';

class SelectedAllExpenseItem extends StatelessWidget {
  const SelectedAllExpenseItem({
    super.key,
    required this.allExpenssesItemModel,
  });

  final AllExpenssesItemModel allExpenssesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: const Color(0XFF4EB7F2),
          shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color(0xFFF1F1F1),
              ),
              borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensseItemHeader(
            image: allExpenssesItemModel.image,
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit:BoxFit.scaleDown,
            child: Text(
              allExpenssesItemModel.title,
              style:
                  AppStyles.styleMedium16(context).copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
                        fit:BoxFit.scaleDown,

            child: Text(
              allExpenssesItemModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0XFFFAFAFA)),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
                        fit:BoxFit.scaleDown,

            child: Text(
              allExpenssesItemModel.amount,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
