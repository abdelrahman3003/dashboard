import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_button.dart';

class InvoiceButtons extends StatelessWidget {
  const InvoiceButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: AppButton(title: "Send Money", color: AppColors.white)),
        const SizedBox(width: 16),
        const Expanded(child: AppButton(title: "Add more details")),
      ],
    );
  }
}
