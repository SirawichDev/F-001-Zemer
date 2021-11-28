import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zemer/components/app_bar.dart';
import 'package:zemer/components/bottom_nav.dart';
import 'package:zemer/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context, isTransparent: true),
      body: const Body(),
      bottomNavigationBar: BottomNav(),
    );
  }
}