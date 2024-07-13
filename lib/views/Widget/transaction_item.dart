import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transctionModel});
  final TransactionModel transctionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        subtitle: Text(
          transctionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        title: Text(
          transctionModel.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          transctionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transctionModel.isWithdrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
