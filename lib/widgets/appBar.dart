import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
          textAlign: TextAlign.center,
          textScaleFactor: 2.0,
          text: TextSpan(
            text: "WALLPAPER",
            style: TextStyle(color: Colors.deepPurpleAccent, fontStyle: FontStyle.normal, fontWeight: FontWeight.w600),
          )),
    );
  }
}
