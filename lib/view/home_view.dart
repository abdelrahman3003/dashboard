import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/app_layout_builder.dart';
import 'package:dashboard/utils/size_config.dart';
import 'package:dashboard/view/widget/desktop_layout.dart';
import 'package:dashboard/view/widget/drawer/drawer_view.dart';
import 'package:flutter/material.dart';

import 'widget/mobiel_layout.dart';
import 'widget/tablet_layout_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFAFAFA),
        drawer: const Drawer(child: DrawerView()),
        appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
            ? AppBar(
                backgroundColor: AppColors.white,
                elevation: 0,
              )
            : null,
        body: AppLayoutBuilder(
          mobileLayoutBuilder: (context) => const MobielLayout(),
          tabletLayoutBuilder: (context) => const TabletLayoutView(),
          desktopLayoutBuilder: (context) => const DesktopLayout(),
        ));
  }
}
