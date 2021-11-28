import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zemer/constants.dart';
import 'package:zemer/size_config.dart';

class NavItem extends StatelessWidget {
  final String title;
  final String icon;
  final GestureTapCallback press;
  final bool isActive;

  const NavItem(
      {Key? key,
      required this.title,
      required this.icon,
      this.isActive = false,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(5),
        height: getScreenWidth(60),
        width: getScreenWidth(60),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isActive) kDefualtShadow]),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              color: kTextColor,
              semanticsLabel: 'xx',
              height: 20,
              allowDrawingOutsideViewBox: true,
              placeholderBuilder: (BuildContext context) => Container(
                  padding: const EdgeInsets.all(30.0),
                  child: const CircularProgressIndicator()),
              width: 20,
            ),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
