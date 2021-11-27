import 'package:flutter/material.dart';
import 'package:zemer/models/user.dart';
import 'package:zemer/size_config.dart';

class Joiner extends StatelessWidget {
  final List<User> users;

  const Joiner({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return Container(
        alignment: Alignment.center,
        child: SizedBox(
          width: double.infinity,
          height: getScreenWidth(30),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ...List.generate(users.length, (index) {
                totalUser++;
                return Positioned(
                  left: (22 * index).toDouble(), child: ClipOval(
                  child: Image.asset(
                    users[index].image, height: getScreenWidth(28),
                    width: getScreenWidth(28), fit: BoxFit.cover,),
                ),);
              })
            ],
          ),
        )
    );
  }
}