import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class AllExpensseItemHeader extends StatelessWidget {
  const AllExpensseItemHeader(
      {super.key,
      required this.image,
      this.imageBackGroundColor,
      this.imageColor, this.iconColor});
  final String image;
  final Color? imageBackGroundColor, imageColor,iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: imageBackGroundColor ?? const Color(0XFF4EB7F2),
          child: SvgPicture.asset(
            Assets.imagesWalletAccount,
            width: 35,
            height: 35,
            colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
          ),
        ),
         const Spacer(),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child:  Icon(
              Icons.arrow_back_ios_new,
              color:iconColor?? const Color(0xFF064061),
            ))
      ],
    );
  }
}
