import 'dart:developer';

import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/size_config.dart';
import 'package:dashboard/view/widget/all_expenses/expenses_bar.dart';
import 'package:dashboard/view/widget/card%20and%20income/income/pichar_draw_detailed.dart';
import 'package:flutter/widgets.dart';

import '../../../../model/pichard_model.dart';
import 'income_piechart.dart';

class IncomeView extends StatelessWidget {
  const IncomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<PichardModel> pichardModelList = [
      PichardModel(
          title: "Design service", value: 40, color: const Color(0xff208CC8)),
      PichardModel(
          title: "Design product", value: 25, color: const Color(0xff4EB7F2)),
      PichardModel(
          title: "Product royalti", value: 20, color: const Color(0xff064061)),
      PichardModel(title: "Other", value: 22, color: const Color(0xffE2DECD)),
    ];
    double width = MediaQuery.sizeOf(context).width;
    bool isMinized =
        width <= 1250 && width >= SizeConfig.desktop ? true : false;
    log("$width");
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const ExpensesBar(title: "Income"),
            isMinized
                ? AspectRatio(
                    aspectRatio: 1,
                    child:
                        PicharDrawDetailed(pichardModelLIst: pichardModelList))
                : IncomePiechart(pichardModelList: pichardModelList),
          ],
        ),
      ),
    );
  }
}
