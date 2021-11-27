import 'package:flutter/material.dart';
import 'package:zemer/constants.dart';
import 'package:zemer/size_config.dart';

class TheTitle extends StatelessWidget {
  const TheTitle({Key? key, required this.title, required this.press})
      : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getScreenWidth(kDefaultPadding)),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: getScreenWidth(16)),
          ),
          const Spacer(),
          GestureDetector(
            onTap: press,
            child: const Text("See All"),
          )
        ],
      ),
    );
  }
}
