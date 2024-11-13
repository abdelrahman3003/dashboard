import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'pageView/card_with_dots.dart';
import 'see_all_text.dart';
import 'transaction_list.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My card", style: AppStyles.style20font600black(context)),
            const SizedBox(height: 20),
            const CardWithDots(),
            const SizedBox(height: 10),
            const Divider(color: Color(0xffF1F1F1)),
            const SizedBox(height: 20),
            const SeeAllText(),
            const SizedBox(height: 12),
            const TransactionHistory()
          ],
        ));
  }
}
