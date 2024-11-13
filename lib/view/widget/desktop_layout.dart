import 'package:flutter/material.dart';

import 'all_expenses/expenses_view.dart';
import 'card and income/card_and_income_view.dart';
import 'drawer/drawer_view.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: DrawerView()),
        SizedBox(width: 32),
        Expanded(flex: 3, child: ExpensesView()),
        SizedBox(width: 24),
        Expanded(flex: 2, child: CardAndIncomeView())
      ],
    );
  }
}
