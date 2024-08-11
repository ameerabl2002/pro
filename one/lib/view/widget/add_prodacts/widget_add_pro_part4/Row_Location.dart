import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/Controller_List.dart';
import 'package:get/get.dart';
import '../../../../core/shared/MyDropDowen.dart';

class Row_Location extends StatelessWidget {
  Conttroler_Dropdown_Location conttroler_dropdown_location =Get.put(Conttroler_Dropdown_Location());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child:GetBuilder<Conttroler_Dropdown_Location>(builder: (controller) {
          return MyDropDown(name_controller: conttroler_dropdown_location, list: conttroler_dropdown_location.list, hintt: "hintt", selectedItem: conttroler_dropdown_location.selectedItem);
        },
        ),),
        Expanded(child: Container(alignment: Alignment.centerRight,child: Text("الموقع",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: my_green2
        )))),
      ],
    );
  }
}
