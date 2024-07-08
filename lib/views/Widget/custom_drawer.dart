import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/Widget/drawer_item.dart';
import 'package:responsive_dashboard/views/Widget/drawer_items_list_view.dart';
import 'package:responsive_dashboard/views/Widget/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(children: [
        UserInfoListTile(
            title: "Leken Okeowo",
            image: Assets.imagesAvatar3,
            subtitle: "demo@gmail.com"),
        SizedBox(
          height: 8,
        ),
        DrawerItemsListView(),
        Spacer(),
        BottomDrawerList()
      ]),
    );
  }
}

class BottomDrawerList extends StatelessWidget {
  const BottomDrawerList({super.key});
  static const List<DraweItemModel> drawerItems = [
    DraweItemModel(title: "Setting System", image: Assets.imagesSettings),
    DraweItemModel(title: "Logout account", image: Assets.imagesLogout),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: drawerItems.length,
          itemBuilder: (context, index) =>
              DrawerItem(model: drawerItems[index], isActive: true)),
    );
  }
}
