import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller_Colors extends GetxController {
  List color_pro = [];
  List<Color> avaol = [
    Colors.brown,
    Colors.deepPurple,
    Colors.red,
    Colors.black,
    Colors.amber,
    Colors.green,
    Colors.lightGreen,
    Colors.brown,
    Colors.deepPurple,
    Colors.black45,
    Colors.red,
    Colors.black,
    Colors.amber,
    Colors.green,
    Colors.lightGreen,
    Colors.brown,
    Colors.deepPurple,
    Colors.black45,

  ];
  List<bool> selectedColor = List.filled(18, false);

  void cheng_color(int index, Color color) {
    bool a = selectedColor[index] = !selectedColor[index];
    if (a) {
      color_pro.add(avaol[index].value);
    } else
      color_pro.remove(avaol[index].value);

    print(color_pro);
    update();
  }
}
