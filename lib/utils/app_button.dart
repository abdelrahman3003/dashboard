import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.title, this.color});
  final String title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
            padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(vertical: 20)),
            backgroundColor:
                WidgetStatePropertyAll(color ?? AppColors.primary)),
        child: Text(
          title,
          style: AppStyles.style14font400black.copyWith(
            color: color != null ? AppColors.primary : AppColors.white,
          ),
        ));
  }
}
