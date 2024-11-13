import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../model/transacrion_model.dart';
import '../../../../utils/app_styles.dart';



class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.transacrionModel,
  });
  final TransacrionModel transacrionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transacrionModel.title,
          style: AppStyles.style14font400black,
        ),
        subtitle: Text(transacrionModel.date,
            style: AppStyles.style12font400black.copyWith(
              color: const Color(0xffAAAAAA),
            )),
        trailing: Text(transacrionModel.amount,
            style: AppStyles.style12font400black.copyWith(
              color: transacrionModel.isWisthdrawel
                  ? const Color(0xff7DD97B)
                  : const Color(0xffF3735E),
            )),
      ),
    );
  }
}
