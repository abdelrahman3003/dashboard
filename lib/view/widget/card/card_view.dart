import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/view/widget/card/custom_listtile.dart';
import 'package:dashboard/view/widget/card/pageView/card_with_dots.dart';
import 'package:dashboard/view/widget/card/see_all_text.dart';
import 'package:dashboard/view/widget/card/transaction_history.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My card", style: AppStyles.style14font400black),
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
