import 'package:dashboard/utils/app_colors.dart';
import 'package:flutter/widgets.dart';

class Dot extends StatelessWidget {
  const Dot({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        height: 8,
        width: isActive ? 32 : 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isActive ? AppColors.primary : const Color(0xffE8E8E8),
        ));
  }
}
