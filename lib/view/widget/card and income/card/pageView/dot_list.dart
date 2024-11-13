import 'package:flutter/widgets.dart';

import 'dot.dart';

class DotList extends StatelessWidget {
  const DotList({super.key, required this.indexIsActive});
  final int indexIsActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (i) => Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Dot(isActive: indexIsActive == i),
        ),
      ),
    );
  }
}
