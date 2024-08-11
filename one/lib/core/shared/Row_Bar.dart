import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/view/screen/add_prodacts/Add_Pro_Screen_Part3.dart';



AppBar My_AppBar(String name)
{
  return AppBar(
    backgroundColor: my_green,
    actions:
    [Row(
      children: [
        BackButton(
          onPressed: (){
            Get.back();
          },
        ),
        Text(name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            )),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.keyboard_backspace_outlined,
          size: 30,
          color: Colors.black,
        )
      ],
    ) ,
    ],
    leading: Icon(
        Icons.close,
        size: 30,
        color: Colors.black
    ),
  );
}