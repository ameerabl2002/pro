import 'package:flutter/material.dart';

import '../contant/Colors_and_SizeScreen.dart';

class ButStander extends StatelessWidget {
  Color color;
  Color color_border;
  double height;
  double horizontal;
  double fontsize;
  String title;
  void Function()? function;

  ButStander(
      {
       required this.color,
     required this.color_border,
     required this.height,
     required this.horizontal,
     required this.fontsize,
     required this.function,
        required this.title
      }
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: horizontal),
        decoration: BoxDecoration(
            color: color,
            border: Border.all(color: color_border, width: 2),
            borderRadius: BorderRadius.circular(20)),
        height: height,

        child: Text("$title",
            style: TextStyle(
              fontSize: fontsize,
              color: Colors.black,
            )),
      ),
    );
  }
}
