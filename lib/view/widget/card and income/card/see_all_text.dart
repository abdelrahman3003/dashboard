import 'package:flutter/widgets.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_styles.dart';

class SeeAllText extends StatelessWidget {
  const SeeAllText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Transaction History",
          style: AppStyles.style20font600black(context),
        ),
        const Spacer(),
        Text(
          "See All",
          style: AppStyles.style16font500black(context)
              .copyWith(color: AppColors.primary),
        ),
      ],
    );
  }
}
