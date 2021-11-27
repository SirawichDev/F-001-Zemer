import 'package:flutter/material.dart';
import 'package:zemer/components/game_card.dart';
import 'package:zemer/components/the_title.dart';
import 'package:zemer/constants.dart';
import 'package:zemer/models/game_list.dart';
import 'package:zemer/size_config.dart';

class PopularGame extends StatelessWidget {
  const PopularGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TheTitle(title: "Most popular games", press: () {}),
        const VerticalSpacing(of: 10),
        SingleChildScrollView(
          clipBehavior: Clip.antiAlias,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  gameList.length,
                  (index) => Padding(
                        padding: EdgeInsets.only(
                            left: getScreenWidth(20)),
                        child: GameCard(
                          gameList: gameList[index],
                          press: () {},
                        ),
                      ))
            ],
          ),
        )
      ],
    );
  }
}
