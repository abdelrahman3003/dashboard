import 'package:flutter/widgets.dart';

import 'custom_listtile.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomListtile(
            title: "Cash Withdrawal",
            subtitle: "13 Apr, 2022 ",
            training: r"$20,129"),
        SizedBox(height: 12),
        CustomListtile(
            title: "Landing Page project",
            subtitle: "13 Apr, 2022 at 3:30 PM ",
            training: r"$2,000"),
        SizedBox(height: 12),
        CustomListtile(
            title: "Juni Mobile App project",
            subtitle: "13 Apr, 2022 at 3:30 PM",
            training: r"$$20,129"),
      ],
    );
  }
}
