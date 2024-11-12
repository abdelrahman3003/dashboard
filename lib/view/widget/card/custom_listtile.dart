import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/app_styles.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.training});
  final String title, subtitle, training;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
          title,
          style: AppStyles.style14font400black,
        ),
        subtitle: Text(subtitle,
            style: AppStyles.style12font400black.copyWith(
              color: const Color(0xffAAAAAA),
            )),
        trailing: Text(training,
            style: AppStyles.style12font400black.copyWith(
              color: const Color(0xff7DD97B),
            )),
      ),
    );
  }
}
