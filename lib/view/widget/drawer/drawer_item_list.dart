import 'package:dashboard/gen/assets.gen.dart';
import 'package:dashboard/model/drawer_item_model.dart';
import 'package:dashboard/view/widget/drawer/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemList extends StatelessWidget {
  const DrawerItemList({super.key});
  @override
  Widget build(BuildContext context) {
    List items = [
      DrawerItemModel(icon: Assets.icons.category2, title: "Dashboard"),
      DrawerItemModel(icon: Assets.icons.chart2, title: "My Transaction"),
      DrawerItemModel(icon: Assets.icons.graph, title: "Statistics"),
      DrawerItemModel(icon: Assets.icons.wallet2, title: "Wallet Account"),
      DrawerItemModel(icon: Assets.icons.convertCard, title: "My Investments"),
    ];

    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) =>
          DrawerItem(drawerItemModel: items[index]),
    );
  }
}
