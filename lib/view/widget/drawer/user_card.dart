import 'package:dashboard/model/userModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_styles.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.usermodel,
  });
  final Usermodel usermodel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
          usermodel.title,
          style: AppStyles.style14font400black,
        ),
        subtitle: Opacity(
          opacity: .7,
          child: Text(
            usermodel.subtitle,
            style: AppStyles.style12font400black,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            usermodel.icon,
          ),
        ),
      ),
    );
  }
}
