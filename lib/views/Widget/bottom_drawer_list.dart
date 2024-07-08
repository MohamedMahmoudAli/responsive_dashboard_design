import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/Widget/drawer_item.dart';

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
      child: SliverList.builder(
          // shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: drawerItems.length,
          itemBuilder: (context, index) =>
              DrawerItem(model: drawerItems[index], isActive: true)),
    );
  }
}
