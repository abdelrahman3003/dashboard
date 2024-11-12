import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppTextform extends StatelessWidget {
  const AppTextform({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: hint,
          hintStyle: AppStyles.style12font400black.copyWith(
              fontWeight: FontWeight.w100, color: const Color(0xffAAAAAA)),
          filled: true,
          fillColor: const Color(0xffFAFAFA),
          border: buildBorder(),
          enabledBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(style: BorderStyle.none));
  }
}
