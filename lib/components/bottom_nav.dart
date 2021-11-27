import 'package:flutter/material.dart';
import 'package:zemer/components/nav_item.dart';
import 'package:zemer/screens/home/home_screen.dart';
import 'package:zemer/size_config.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(title: "Home", icon: "assets/images/svg/barn.svg", press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
              }),
              NavItem(title: "Event", icon: "assets/images/svg/event.svg", press: () {}),
              NavItem(title: "Chat", icon: "assets/images/svg/chat.svg", press: () {}),
              NavItem(title: "Friend", icon: "assets/images/svg/friend.svg", press: () {})
            ],
          ),
        ),
      ),
    );
  }
  
}