import 'package:dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  const AppLayoutBuilder(
      {super.key,
      required this.mobileLayoutBuilder,
      required this.tabletLayoutBuilder,
      required this.desktopLayoutBuilder});
  final WidgetBuilder mobileLayoutBuilder;
  final WidgetBuilder tabletLayoutBuilder;
  final WidgetBuilder desktopLayoutBuilder;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileLayoutBuilder(context);
        } else if ((constraints.maxWidth < SizeConfig.desktop)) {
          return tabletLayoutBuilder(context);
        } else {
          return desktopLayoutBuilder(context);
        }
      },
    );
  }
}
