import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/Widget/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        title: "Madrina Andi",
        subTiitle: "MAdrinadi20@gmail",
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: "Jousa Nunito",
        subTiitle: "Joush Nunito20@gmail",
        image: Assets.imagesAvatar2),
    UserInfoModel(
        title: "Madrina Andi",
        subTiitle: "MAdrinadi20@gmail",
        image: Assets.imagesAvatar3)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return UserInfoListTile(
          model: items[index],
        );
      },
    );
  }
}
