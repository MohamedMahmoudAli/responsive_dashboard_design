import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/Widget/drawer_items_list_view.dart';
import 'package:responsive_dashboard/views/Widget/in_active_drawer_item.dart';
import 'package:responsive_dashboard/views/Widget/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: UserInfoListTile(
            model: UserInfoModel(
                title: "Madrina Andi",
                subTiitle: "MAdrinadi20@gmail",
                image: Assets.imagesAvatar1),
          ),
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
                child: SizedBox(
                  height: 20,
                ),
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
