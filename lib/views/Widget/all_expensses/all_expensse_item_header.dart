import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class AllExpensseItemHeader extends StatelessWidget {
  const AllExpensseItemHeader({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0XFFFAFAFA),
          child: SvgPicture.asset(
            Assets.imagesWalletAccount,
            width: 35,
            height: 35,
          ),
        ),
        const Spacer(),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xFF064061),
            ))
      ],
    );
  }
}
