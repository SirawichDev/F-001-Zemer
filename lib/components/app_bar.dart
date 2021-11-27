import 'package:flutter/material.dart';
import '../constants.dart';

AppBar buildAppBar(BuildContext context,
    {bool isTransparent = false, String title = ''}) {
  return AppBar(
    backgroundColor: isTransparent ? Colors.transparent : Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.menu, color: Colors.white),
      onPressed: () {},
    ),
    title: !isTransparent
        ? Text(
            isTransparent? "" : title,
            style: const TextStyle(color: kTextColor),
          )
        : null,
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: () {},
          icon: ClipOval(
            child: Image.asset('assets/images/avatar.png'),
          ))
    ],
  );
}