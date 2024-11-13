import 'package:dashboard/model/transacrion_model.dart';
import 'package:flutter/widgets.dart';

import 'transaction_card.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    List trasnactionList = [
      TransacrionModel(
        title: "Cash Withdrawal",
        date: "13 Apr, 2022",
        amount: r"$20,129",
        isWisthdrawel: false,
      ),
      TransacrionModel(
        title: "Landing Page project",
        date: "13 Apr, 2022 at 3:30 PM ",
        amount: r"$2,000",
        isWisthdrawel: true,
      ),
      TransacrionModel(
        title: "Juni Mobile App project",
        date: "13 Apr, 2022 at 3:30 PM",
        amount: r"$20,129",
        isWisthdrawel: true,
      ),
    ];
    return Column(
        children: List.generate(
            trasnactionList.length,
            (index) => Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: TransactionCard(
                    transacrionModel: trasnactionList[index],
                  ),
                )));
  }
}
