import 'package:dashboard/view/widget/drawer/drawer_view.dart';
import 'package:flutter/material.dart';

import 'widget/all_expenses/expenses_view.dart';

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
          Expanded(child: SizedBox())
        ],
      ),
    );
  }
}
