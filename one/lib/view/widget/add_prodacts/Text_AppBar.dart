import 'package:flutter/material.dart';

import 'package:one/core/contant/Colors_and_SizeScreen.dart';


class Text_AppBar extends StatelessWidget {

  String appBar_title;
  Text_AppBar({required this.appBar_title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.all(10),
      child: Text(
        "$appBar_title",

        style: TextStyle(
          fontSize: 30,
          color: my_green2,
        ),
      ),
    );
  }
}
