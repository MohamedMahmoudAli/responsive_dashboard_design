import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class AllExpensseItemHeader extends StatelessWidget {
  const AllExpensseItemHeader({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color(0XFFFAFAFA),
      child: SvgPicture.asset(Assets.imagesWalletAccount),
    );
  }
}
