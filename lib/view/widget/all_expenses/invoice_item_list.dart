import 'package:flutter/material.dart';

import 'invoice_item.dart';

class InvoiceItemList extends StatelessWidget {
  const InvoiceItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: InvoiceItem(
                    title: "Customer name", hint: "Type customer name")),
            SizedBox(width: 16),
            Expanded(
                child: InvoiceItem(
                    title: "Customer name", hint: "Type customer name")),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: InvoiceItem(
                    title: "Item name", hint: "Type customer name")),
            SizedBox(width: 16),
            Expanded(child: InvoiceItem(title: "Customer name", hint: "USD")),
          ],
        ),
      ],
    );
  }
}
