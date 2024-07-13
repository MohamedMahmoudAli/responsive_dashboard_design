import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Assets.imagesCardBackground)),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: const Color(0XFF4EB7F2)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            contentPadding: const EdgeInsets.only(right: 42, left: 31, top: 16),
            title: Text(
              "Name Card",
              style: AppStyles.styleRegular16(context)
                  .copyWith(color: Colors.white),
            ),
            subtitle: Text(
              "Syah Bandi",
              style: AppStyles.styleMedium20(context),
            ),
            trailing: SvgPicture.asset(Assets.imagesGallery),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "0965 6756 4484 5326",
                  style: AppStyles.styleSemiBold24(context)
                      .copyWith(color: Colors.white),
                ),
                Text(
                  "12/20 -124",
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 26,
          )
        ]),
      ),
    );
  }
}
