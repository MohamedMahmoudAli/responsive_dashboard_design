import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0XFFAAAAAA)),
          fillColor: const Color(0xffFAFAFA),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          filled: true,
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0XFFFAFAFA)));
  }
}
