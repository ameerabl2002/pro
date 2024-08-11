import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/Details_Car_Sale_Conttroller.dart';
import 'package:one/core/shared/MyDropDowen.dart';


class Row_Number_Seat extends StatelessWidget {
  const Row_Number_Seat({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              height: 50,
              child:GetBuilder<Details_Car_Sale_Conttroller>(builder: (controller) {
                return MyDropDown(name_controller: controller, list: controller.number_Seat, hintt: "hintt", selectedItem: controller.selectedItem);
              },)

          ),
        ),
        Expanded(child: Container(
          height: 50,
          margin: EdgeInsets.all(10),
          alignment: Alignment.topRight,
          child: Text(
            "عدد المقاعد",
            style: TextStyle(fontSize: 25, color: my_green2,fontWeight: FontWeight.bold),
          ),
        ))
      ],
    );
  }
}
