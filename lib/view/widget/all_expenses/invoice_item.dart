import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';
import '../app_textform.dart';

class InvoiceItem extends StatelessWidget {
  const InvoiceItem({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.style12font400black),
        const SizedBox(height: 12),
        AppTextform(hint: hint)
      ],
    );
  }
}
