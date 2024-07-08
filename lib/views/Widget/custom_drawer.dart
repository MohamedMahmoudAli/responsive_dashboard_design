import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/Widget/bottom_drawer_list.dart';
import 'package:responsive_dashboard/views/Widget/drawer_item.dart';
import 'package:responsive_dashboard/views/Widget/drawer_items_list_view.dart';
import 'package:responsive_dashboard/views/Widget/in_active_drawer_item.dart';
import 'package:responsive_dashboard/views/Widget/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: UserInfoListTile(
              title: "Leken Okeowo",
              image: Assets.imagesAvatar3,
              subtitle: "demo@gmail.com"),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        DrawerItemsListView(),
        SliverFillRemaining(
            hasScrollBody: false,
            child: Column(children: [
              Expanded(
                child: SizedBox(),
              ),
              InActiveDrawerItem(
                model: DraweItemModel(
                    title: "Setting System", image: Assets.imagesSettings),
              ),
              InActiveDrawerItem(
                model: DraweItemModel(
                    title: "Logout account", image: Assets.imagesLogout),
              ),
            ])),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 48,
          ),
        )
      ]),
    );
  }
}
