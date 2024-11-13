import 'package:dashboard/view/widget/drawer/drawer_view.dart';
import 'package:flutter/material.dart';

import 'widget/all_expenses/expenses_view.dart';
import 'widget/card and income/card_and_income_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Row(
        children: [
          Expanded(child: DrawerView()),
          SizedBox(width: 12),
          Expanded(flex: 2, child: ExpensesView()),
          SizedBox(width: 12),
          Expanded(child: CardAndIncomeView())
        ],
      ),
    );
  }
}
