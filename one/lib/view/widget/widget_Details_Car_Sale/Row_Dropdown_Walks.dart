import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/Controller_List.dart';
import 'package:one/core/shared/MyDropDowen.dart';


class Row_Dropdown_Walks extends StatelessWidget {
  Conttroler_Dropdown_Walks conttroler_dropdown_walks=Get.put(Conttroler_Dropdown_Walks());

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              height: 50,
              child:GetBuilder<Conttroler_Dropdown_Walks>(builder: (controller) {
                return MyDropDown(name_controller: controller, list: controller.list, hintt: "hintt", selectedItem: controller.selectedItem);
              },)

          ),
        ),
        Expanded(child: Container(
          height: 50,
          margin: EdgeInsets.all(10),
          alignment: Alignment.topRight,
          child: Text(
            "كم ماشي",
            style: TextStyle(fontSize: 25, color: my_green2,fontWeight: FontWeight.bold),
          ),
        ))
      ],
    );
  }
}
