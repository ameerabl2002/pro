import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../contant/Colors_and_SizeScreen.dart';



my_AlertDiloge({ title="تاكد من ملى الحقول",required observed, onpress =()}) {
    Get.defaultDialog(
      title: "$title",
      confirm: Container(
        alignment: Alignment.center,
        color: my_green,
        height: screen_height * 0.05,
        width: screen_width * 0.20,
        child: InkWell(
          onTap: () {
            Get.back();
            onpress();
          },
          child: Text(
            "موافق", style: TextStyle(fontSize: 20, color: my_green2),),
        ),
      ),
      content: Row(
        children: [

          Expanded(child: Text("$observed", style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: my_green2))),
          Icon(Icons.lightbulb),
        ],
      ),
      // middleText:"من الضروري اضافة صور للاعلان",

    );
  }

my_AlertDiloge2({ title="تحذير",required observed,onpress1 =(),onpress2=()}) {
  Get.defaultDialog(
    title: "$title",
    confirm: Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        Container(decoration: BoxDecoration(color: my_green,borderRadius: BorderRadius.circular(20)),
        alignment: Alignment.center,

        height: screen_height * 0.05,
        width: screen_width * 0.20,
           child:
          InkWell(
        onTap: () {
          Get.back();
          onpress1();
        },
        child: Text(
          "موافق", style: TextStyle(fontSize: 20, color: my_green2),),
      )),
    Container(decoration: BoxDecoration(color: my_green,borderRadius: BorderRadius.circular(20)),

    alignment: Alignment.center,
        height: screen_height * 0.05,
        width: screen_width * 0.20,
            child:
            InkWell(
              onTap: () {
                Get.back();
                onpress2();
              },
              child: Text(
                "الغاء", style: TextStyle(fontSize: 20, color: my_green2),),
            )),
    ]),
    content: Row(
      children: [

        Expanded(child: Text("$observed", style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15, color: my_green2))),
        Icon(Icons.lightbulb),
      ],
    ),
    // middleText:"من الضروري اضافة صور للاعلان",

  );
}
