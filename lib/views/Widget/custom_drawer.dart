import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/Widget/drawer_item.dart';
import 'package:responsive_dashboard/views/Widget/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DraweItemModel> drawerItems = [
    DraweItemModel(title: "Dashboard", image: Assets.imagesDashboard),
    DraweItemModel(title: "My Transactions", image: Assets.imagesMyTransctions),
    DraweItemModel(title: "Statistics", image: Assets.imagesStatistics),
    DraweItemModel(title: "Wallet Acount", image: Assets.imagesWalletAccount),
    DraweItemModel(title: "My Investments", image: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: [
        const UserInfoListTile(
            title: "Leken Okeowo",
            image: Assets.imagesAvatar3,
            subtitle: "demo@gmail.com"),
        const SizedBox(
          height: 8,
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: drawerItems.length,
            itemBuilder: (context, index) =>
                DrawerItem(model: drawerItems[index])),
        const SizedBox(
          height: 8,
        ),
      ]),
    );
  }
}
