import 'package:dashboard/gen/assets.gen.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/app_colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.primary,
            image: const DecorationImage(
                image: AssetImage("assets/icons/Mask group.png")),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: Text(
                  "Name card",
                  style: AppStyles.style16font400white(context)
                      .copyWith(color: const Color(0xffFFFFFF)),
                ),
                subtitle: Text("Syah Bandi",
                    style: AppStyles.style20font500whit(context)),
                trailing: SvgPicture.asset(Assets.icons.gallery)),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.style24font600black(context).copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.style16font400white(context).copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Flexible(child: SizedBox(height: 16))
          ],
        ),
      ),
    );
  }
}
