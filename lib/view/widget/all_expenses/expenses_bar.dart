import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../gen/assets.gen.dart';
import '../../../utils/app_styles.dart';

class ExpensesBar extends StatelessWidget {
  const ExpensesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                Text(
                  "All Expenses",
                  style: AppStyles.style16font500black,
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(width: .2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Text(
                        "Monthly",
                        style: AppStyles.style16font500black,
                      ),
                      const SizedBox(width: 10),
                      Transform.rotate(
                        angle: 1.5708,
                        child: SvgPicture.asset(Assets.icons.arrowRight),
                      ),
                    ],
                  ),
                )
              ],
            );
  }
}