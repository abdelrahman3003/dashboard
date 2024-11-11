import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../gen/assets.gen.dart';
import '../../../utils/app_styles.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
          "Lekan Okeowo",
          style: AppStyles.style16font500black,
        ),
        leading: SvgPicture.asset(
          Assets.icons.avatar1,
        ),
        subtitle: Opacity(
          opacity: .7,
          child: Text(
            "demo@gmail.com",
            style: AppStyles.style12font400black,
          ),
        ),
      ),
    );
  }
}
