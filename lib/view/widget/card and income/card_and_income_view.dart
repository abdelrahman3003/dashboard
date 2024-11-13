import 'package:dashboard/view/widget/card%20and%20income/card/card_view.dart';
import 'package:dashboard/view/widget/card%20and%20income/income/income_view.dart';
import 'package:flutter/widgets.dart';

class CardAndIncomeView extends StatelessWidget {
  const CardAndIncomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CardView(),
        SizedBox(height: 24),
        IncomeView(),
      ],
    );
  }
}
