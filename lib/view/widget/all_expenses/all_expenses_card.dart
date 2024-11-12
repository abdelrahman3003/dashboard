import 'package:dashboard/gen/assets.gen.dart';
import 'package:dashboard/model/expenses_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_colors.dart';

class AllExpensesCard extends StatelessWidget {
  const AllExpensesCard(
      {super.key, required this.expensesModel, required this.isActive});
  final ExpensesModel expensesModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      decoration: BoxDecoration(
          color: isActive ? AppColors.primary : AppColors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              width: .05, color: const Color.fromARGB(255, 207, 205, 205))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                expensesModel.icon,
                color: isActive ? Colors.white : AppColors.primary,
              ),
              const Spacer(),
              SvgPicture.asset(
                Assets.icons.arrowRight,
                color: isActive ? Colors.white : AppColors.primary,
              ),
            ],
          ),
          const SizedBox(height: 34),
          Text(
            expensesModel.title,
            style: AppStyles.style16font500black.copyWith(
              color: isActive ? Colors.white : AppColors.primary,
            ),
          ),
          const SizedBox(height: 8),
          Opacity(
            opacity: .8,
            child: Text(
              expensesModel.subtitle,
              style: AppStyles.style14font400black.copyWith(
                color: isActive ? Colors.white : AppColors.primary,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            expensesModel.money,
            style: AppStyles.style24font600black.copyWith(
              color: isActive ? Colors.white : AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
