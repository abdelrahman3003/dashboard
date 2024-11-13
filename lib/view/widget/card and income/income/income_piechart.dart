import 'package:dashboard/model/pichard_model.dart';
import 'package:dashboard/view/widget/card%20and%20income/income/income_details_list.dart';
import 'package:flutter/widgets.dart';

import 'piechart_draw.dart';

class IncomePiechart extends StatelessWidget {
  const IncomePiechart({
    super.key,
    required this.pichardModelList,
  });
  final List<PichardModel> pichardModelList;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: AspectRatio(
                aspectRatio: 1,
                child: PiechartDraw(pichardModelLIst: pichardModelList))),
        const SizedBox(width: 40),
        Expanded(
            flex: 2,
            child: IncomeDetailsList(pichardModelList: pichardModelList))
      ],
    );
  }
}
