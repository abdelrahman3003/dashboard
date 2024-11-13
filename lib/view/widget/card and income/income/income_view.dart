import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/view/widget/all_expenses/expenses_bar.dart';
import 'package:flutter/widgets.dart';

import 'income_piechart.dart';

class IncomeView extends StatelessWidget {
  const IncomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(12)),
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [ExpensesBar(title: "Income"), IncomePiechart()],
        ),
      ),
    );
  }
}
