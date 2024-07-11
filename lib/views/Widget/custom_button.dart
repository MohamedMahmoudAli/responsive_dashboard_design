import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, required this.title, this.textColor});
  final Color? backgroundColor,textColor; 
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 0,
            backgroundColor:backgroundColor?? const Color(0xFF4DB7F2),
          ),
          onPressed: () {},
          child: Text(
            title,
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: textColor
            ),
          )),
    );
  }
}