import 'package:flutter/material.dart';
import 'package:zemer/components/the_title.dart';
import 'package:zemer/constants.dart';
import 'package:zemer/models/game_list.dart';
import 'package:zemer/models/user.dart';
import 'package:zemer/screens/home/components/user_card.dart';
import 'package:zemer/size_config.dart';

class TopPlayer extends StatelessWidget {
  const TopPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TheTitle(
          title: "Top Player",
          press: () {},
        ),
        const VerticalSpacing(of: 20),
        Container(
          margin:
              EdgeInsets.symmetric(horizontal: getScreenWidth(kDefaultPadding)),
          padding: EdgeInsets.all(getScreenWidth(24)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [kDefualtShadow]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...List.generate(topPlayer.length,
                    (index) => UserCard(user: topPlayer[index], press: () {}))
              ],
            ),
          ),
      ],
    );
  }
}
