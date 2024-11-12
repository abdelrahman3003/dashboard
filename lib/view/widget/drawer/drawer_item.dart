import 'package:dashboard/model/drawer_item_model.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isactive});
  final DrawerItemModel drawerItemModel;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.icon,
      ),
      trailing: isactive ? Container(width: 5, color: AppColors.primary) : null,
      title: Text(drawerItemModel.title,
          style: AppStyles.style12font400black.copyWith(
            color: isactive ? AppColors.primary : AppColors.black,
          )),
    );
  }
}
