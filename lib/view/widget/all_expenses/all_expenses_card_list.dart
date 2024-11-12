import 'package:dashboard/gen/assets.gen.dart';
import 'package:dashboard/model/expenses_model.dart';
import 'package:dashboard/view/widget/all_expenses/all_expenses_card.dart';
import 'package:flutter/material.dart';

class AllExpensesCardList extends StatefulWidget {
  const AllExpensesCardList({super.key});

  @override
  State<AllExpensesCardList> createState() => _AllExpensesCardListState();
}

List expensesModels = [
  ExpensesModel(
      icon: Assets.icons.moneys,
      title: "Balance",
      subtitle: "April 2022",
      money: r"$20,129"),
  ExpensesModel(
      icon: Assets.icons.cardReceive,
      title: "Income",
      subtitle: "April 2022",
      money: r"$20,129"),
  ExpensesModel(
      icon: Assets.icons.cardReceive,
      title: "Expenses",
      subtitle: "April 2022",
      money: r"$20,129")
];
int index = 0;

class _AllExpensesCardListState extends State<AllExpensesCardList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: expensesModels
          .asMap()
          .entries
          .map((entry) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    onTap: () {
                      cardOnclick(entry);
                    },
                    child: AllExpensesCard(
                      expensesModel: entry.value,
                      isActive: entry.key == index,
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }

  void cardOnclick(MapEntry<int, dynamic> entry) {
    setState(() {
      if (entry.key != index) {
        index = entry.key;
      }
    });
  }
}
