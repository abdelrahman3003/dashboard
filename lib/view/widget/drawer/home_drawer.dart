import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../model/drawer_item_model.dart';
import 'drawer_item.dart';
import 'drawer_item_list.dart';
import 'user_card.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: UserCard()),
          SliverToBoxAdapter(
              child:
                  SizedBox(height: MediaQuery.of(context).size.height * .02)),
          const DrawerItemList(),
          SliverFillRemaining(
            child: Column(
              children: [
                const Spacer(),
                DrawerItem(
                    isactive: false,
                    drawerItemModel: DrawerItemModel(
                      icon: Assets.icons.setting2,
                      title: "Setting",
                    )),
                DrawerItem(
                    isactive: false,
                    drawerItemModel: DrawerItemModel(
                      icon: Assets.icons.logout,
                      title: "Logout",
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
