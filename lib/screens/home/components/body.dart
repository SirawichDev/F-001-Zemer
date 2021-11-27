import 'package:flutter/material.dart';
import 'package:zemer/screens/home/components/home_header.dart';
import 'package:zemer/screens/home/components/popular_games.dart';
import 'package:zemer/size_config.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: SafeArea(
        top: false,
        child: Column(
          children: const [
            HomeHeader(),
            VerticalSpacing(),
            PopularGame(),
            VerticalSpacing()
          ],
        ),
      ),
    );
  }
}
