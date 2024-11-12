import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppTextform extends StatelessWidget {
  const AppTextform({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: "Type customer name",
          hintStyle: AppStyles.style12font400black
              .copyWith(fontWeight: FontWeight.w100),
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
