import 'package:flutter/material.dart';
import 'package:zemer/models/user.dart';
import 'package:zemer/size_config.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key, required this.user, required this.press})
      : super(key: key);
  final User user;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(user.image, height: getScreenWidth(55),
              width: getScreenWidth(55),
              fit: BoxFit.cover,),
          ),
          VerticalSpacing(of: 10),
          Text(user.name,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 11),)
        ],
      ),
    );
  }

}