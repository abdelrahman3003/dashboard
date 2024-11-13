import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/widgets.dart';

import 'custom_card.dart';
import 'dot_list.dart';

class CardWithDots extends StatefulWidget {
  const CardWithDots({super.key});
  @override
  State<CardWithDots> createState() => _CardWithDotsState();
}

int index = 0;

class _CardWithDotsState extends State<CardWithDots> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView.builder(
          itemCount: 3,
          onPageChanged: (value) {
            setState(() {
              index = value;
            });
          },
          itemBuilder: (context, i) {
            return const CustomCard();
          },
        ),
        const SizedBox(height: 24),
        DotList(indexIsActive: index)
      ],
    );
  }
}
