import 'package:dashboard/view/widget/all_expenses/all_expenses_card_list.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import 'expenses_bar.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 1, color: AppColors.white)),
        child: const Column(
          children: [
            ExpensesBar(),
            SizedBox(height: 10),
            AllExpensesCardList()
          ],
        ));
  }
}
