import 'package:dashboard/utils/app_layout_builder.dart';
import 'package:dashboard/view/widget/desktop_layout.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFAFAFA),
        body: AppLayoutBuilder(
          mobileLayoutBuilder: (context) => const SizedBox(),
          tabletLayoutBuilder: (context) => const SizedBox(),
          desktopLayoutBuilder: (context) => const DesktopLayout(),
        ));
  }
}
