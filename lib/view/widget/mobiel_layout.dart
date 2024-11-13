import 'package:flutter/material.dart';

import 'all_expenses/expenses_view.dart';
import 'card and income/card_and_income_view.dart';

class MobielLayout extends StatelessWidget {
  const MobielLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ExpensesView(),
          CardAndIncomeView(),
        ],
      ),
    );
  }
}
