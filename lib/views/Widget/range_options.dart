import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class RangOptions extends StatelessWidget {
  const RangOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xFFF1F1F1),
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        children: [
          Text(
            "Monthly",
            style: AppStyles.styleMedium16(context),
          ),
          Transform.rotate(
              angle: -1.57079633,
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xFF064061),
              ))
        ],
      ),
    );
  }
}
