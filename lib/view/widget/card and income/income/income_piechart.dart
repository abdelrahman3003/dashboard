import 'package:dashboard/model/pichard_model.dart';
import 'package:dashboard/view/widget/card%20and%20income/income/income_details_list.dart';
import 'package:flutter/widgets.dart';

import 'piechart_draw.dart';

class IncomePiechart extends StatelessWidget {
  const IncomePiechart({
    super.key,
  });

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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: AspectRatio(
                aspectRatio: 1,
                child: PiechartDraw(pichardModelLIst: pichardModelList))),
        const SizedBox(width: 40),
        Expanded(child: IncomeDetailsList(pichardModelList: pichardModelList))
      ],
    );
  }
}
