import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/Widget/all_expensse_item_header.dart';

class AllExpenssesItem extends StatelessWidget {
  const AllExpenssesItem({super.key});

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
      child: const Column(
        children: [AllExpensseItemHeader(image: Assets.imagesWalletAccount)],
      ),
    );
  }
}
