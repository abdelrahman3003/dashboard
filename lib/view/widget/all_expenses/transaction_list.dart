import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../model/userModel.dart';
import '../drawer/user_card.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    List tranactios = [
      Usermodel(
          title: "Madrani Andi",
          subtitle: "Madraniadi20@gmail",
          icon: Assets.icons.avatar1),
      Usermodel(
          title: "Madrani Andi",
          subtitle: "Madraniadi20@gmail",
          icon: Assets.icons.avatar2),
      Usermodel(
          title: "Madrani Andi",
          subtitle: "Madraniadi20@gmail",
          icon: Assets.icons.avatar2),
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: tranactios
            .map((e) => IntrinsicWidth(child: UserCard(usermodel: e)))
            .toList(),
      ),
    );
    // ListView.builder(
    //   itemCount: tranactios.length,
    //   scrollDirection: Axis.horizontal,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) =>
    //       IntrinsicWidth(child: UserCard(usermodel: tranactios[index])),
    // ),;
  }
}
