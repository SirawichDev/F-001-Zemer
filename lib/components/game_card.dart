import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zemer/components/joiner.dart';
import 'package:zemer/constants.dart';
import 'package:zemer/models/game_list.dart';
import 'package:zemer/size_config.dart';

class GameCard extends StatelessWidget {
  final GameList gameList;
  final bool isFullCard;
  final GestureTapCallback press;

  GameCard(
      {Key? key,
      required this.gameList,
      this.isFullCard = false,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreenWidth(isFullCard ? 200 : 160),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: isFullCard ? 1.09 : 1.19,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(gameList.image), fit: BoxFit.cover)),
            ),
          ),
          Container(
            width: getScreenWidth(isFullCard ? 158 : 160),
            padding: EdgeInsets.all(getScreenWidth(kDefaultPadding)),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [kDefualtShadow],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Column(
              children: [
                Text(gameList.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: isFullCard ? 17 : 12)),
                if (isFullCard)
                  Text(
                    gameList.date.day.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                if (isFullCard)
                  Text(DateFormat.MMMM().format(gameList.date) +
                      "" +
                      gameList.date.year.toString()),
                const VerticalSpacing(of: 10),
                Joiner(users: gameList.users)
              ],
            ),
          )
        ],
      ),
    );
  }
}
