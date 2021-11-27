import 'package:flutter/material.dart';
import 'package:zemer/screens/home/components/search.dart';
import 'package:zemer/size_config.dart';

final Shader linearGradient = const LinearGradient(
  colors: <Color>[Colors.greenAccent, Colors.white54, Colors.pinkAccent],
).createShader(const Rect.fromLTWH(100.0, 0.0, 200.0, 70.0));

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getScreenWidth(25)),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/home_bg.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: getScreenHeight(315),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getScreenHeight(73)),
              Text(
                "Zemer",
                style: TextStyle(
                    fontSize: getScreenHeight(73),
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = linearGradient,
                    height: .5),
              ),
              const Text(
                "Gamers Community App",
                style: TextStyle(color: Colors.greenAccent),
              ),
            ],
          ),
          Positioned(bottom: getScreenWidth(-25), child: const SearchField())
        ],
      ),
    );
  }
}
