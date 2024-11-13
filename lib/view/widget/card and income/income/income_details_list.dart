import 'package:dashboard/model/pichard_model.dart';
import 'package:dashboard/view/widget/card%20and%20income/income/income_details.dart';
import 'package:flutter/widgets.dart';

class IncomeDetailsList extends StatelessWidget {
  const IncomeDetailsList({super.key, required this.pichardModelList});
  final List<PichardModel> pichardModelList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        pichardModelList.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: IncomeDetails(pichardModel: pichardModelList[index]),
        ),
      ),
    );
  }
}
