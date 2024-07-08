import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/Widget/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  @override
  int activeIndex = 0;
  final List<DraweItemModel> drawerItems = [
    const DraweItemModel(title: "Dashboard", image: Assets.imagesDashboard),
    const DraweItemModel(
        title: "My Transactions", image: Assets.imagesMyTransctions),
    const DraweItemModel(title: "Statistics", image: Assets.imagesStatistics),
    const DraweItemModel(
        title: "Wallet Acount", image: Assets.imagesWalletAccount),
    const DraweItemModel(
        title: "My Investments", image: Assets.imagesMyInvestments),
  ];
  Widget build(BuildContext context) {
    return SliverList.builder(
        // shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: drawerItems.length,
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: DrawerItem(
                  model: drawerItems[index],
                  isActive: activeIndex == index,
                ),
              ),
            ));
  }
}
