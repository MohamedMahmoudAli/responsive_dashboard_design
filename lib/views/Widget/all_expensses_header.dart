import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class AllExpenssesHeader extends StatelessWidget {
  const AllExpenssesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
            children: [
              Text(
                "All Expenses",
                style: AppStyles.styleBold16(context),
              ),
              Expanded(child: const SizedBox(width: 16)),
              Container(
                decoration: BoxDecoration(
                    border: Border(), borderRadius: BorderRadius.circular(8)),
                child:  Row(
                  children: [Text("Monthly"), SvgPicture.asset(Assets.imagesExpenses)],
                ),
              )
            ],
          );
  }
}