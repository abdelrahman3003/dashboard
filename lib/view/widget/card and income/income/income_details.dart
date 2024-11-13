import 'package:dashboard/model/pichard_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key, required this.pichardModel});
  final PichardModel pichardModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListTile(
      title: Text(
        pichardModel.title,
        style: AppStyles.style12font400black.copyWith(
          color: pichardModel.color,
        ),
      ),
      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
            color: pichardModel.color, borderRadius: BorderRadius.circular(12)),
      ),
      trailing: Text(
        "${pichardModel.value}%",
        style: AppStyles.style12font400black.copyWith(
          color: pichardModel.color,
        ),
      ),
    ));
  }
}
