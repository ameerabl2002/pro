import 'package:flutter/material.dart';

import 'package:one/core/contant/Colors_and_SizeScreen.dart';





class Container_AppBar extends StatelessWidget {
  const Container_AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screen_height * 0.15,
      decoration: BoxDecoration(
          color: my_green,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40))),
    );
  }
}

