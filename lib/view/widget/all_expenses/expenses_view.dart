import 'package:dashboard/view/widget/all_expenses/all_expenses.dart';
import 'package:dashboard/view/widget/all_expenses/quick_invoice.dart';
import 'package:flutter/material.dart';

class ExpensesView extends StatelessWidget {
  const ExpensesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
