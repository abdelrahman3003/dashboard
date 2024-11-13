import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/view/widget/all_expenses/invoice_item_list.dart';
import 'package:dashboard/view/widget/all_expenses/quick_invoice_bar.dart';
import 'package:dashboard/view/widget/all_expenses/transaction_list.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import 'invoice_buttons.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: AppColors.white),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceBar(),
          Text("Latest Transaction",
              style: AppStyles.style16font500black(context)),
          const SizedBox(height: 12),
          const SizedBox(height: 70, child: TransactionList()),
          const SizedBox(height: 24),
          const InvoiceItemList(),
          const SizedBox(height: 24),
          const InvoiceButtons()
        ],
      ),
    );
  }
}
