import 'package:dashboard/gen/assets.gen.dart';
import 'package:dashboard/model/drawer_item_model.dart';
import 'package:dashboard/view/widget/drawer/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({super.key});

  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
  int isSelected = 0;
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
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 10),
        child: InkWell(
          onTap: () {
            setState(() {
            isSelected = index;
            });
          },
          child: DrawerItem(
            drawerItemModel: items[index],
            isactive: isSelected == index,
          ),
        ),
      ),
    );
  }
}
