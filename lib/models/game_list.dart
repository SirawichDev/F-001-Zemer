import 'dart:math';

import 'package:zemer/models/user.dart';

class GameList {
  final String name, image;
  final DateTime date;
  final List<User> users;

  GameList(
      {required this.name,
      required this.image,
      required this.date,
      required this.users});
}

List<GameList> gameList = [
  GameList(
      name: "GTA",
      image: "assets/images/gta.jpeg",
      date: DateTime(2020, 10, 15),
      users: users..shuffle(Random(1))),
  GameList(
      name: "League of Legend",
      image: "assets/images/lol.jpeg",
      date: DateTime(2020, 10, 15),
      users: users..shuffle(Random(2))),
  GameList(
      name: "NBA 2K 2099",
      image: "assets/images/nba.jpeg",
      date: DateTime(2020, 10, 15),
      users: users..shuffle(Random(4))),
  GameList(
      name: "Resident Evil",
      image: "assets/images/resident.jpg",
      date: DateTime(2020, 10, 15),
      users: users..shuffle(Random(3))),
];

List<User> users = [u1, u2, u4,u5,u6,u7, u8];
