import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/Controller_List.dart';
import 'package:one/core/shared/MyDropDowen.dart';

class Row_Specific extends StatelessWidget {
  Conttroler_Dropdowe_Specific con3 = Get.put(Conttroler_Dropdowe_Specific());

  @override
  Widget build(BuildContext context) {
    return             Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.bottomCenter,
            height: 50,
            child: GetBuilder<Conttroler_Dropdowe_Specific>(
              builder: (controller) {
                return MyDropDown(
                  name_controller: con3,
                  list: con3.list,
                  hintt: "اختار العملة",
                  selectedItem: con3.selectedItem,
                );
              },
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.bottomRight,
                height: 50,
                child: Text(
                  "المواصفات",
                  style: TextStyle(fontSize: 25, color: my_green2,fontWeight: FontWeight.bold),
                )))
      ],
    );
  }
}
