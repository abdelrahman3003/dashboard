import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';

class QuickInvoiceBar extends StatelessWidget {
  const QuickInvoiceBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Text(
            "Quick Invoice",
            style: AppStyles.style16font500black,
          ),
          const Spacer(),
          CircleAvatar(
            maxRadius: 24,
            backgroundColor: const Color(0xffFAFAFA),
            child: Icon(
              Icons.add,
              color: AppColors.primary,
            ),
          )
        ],
      );
  }
}