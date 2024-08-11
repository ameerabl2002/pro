import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/add_prodacts/Add_Pro_Conttroler_Part4.dart';
import 'package:one/controller/Details_Car_Sale_Conttroller.dart';

import 'Card_Button.dart';
class Row_Fuel extends StatelessWidget {
  // const Row_Type({super.key});
  Details_Car_Sale_Conttroller con=Get.put(Details_Car_Sale_Conttroller());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(

            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
             reverse: true,
              children: [
                GetBuilder<Details_Car_Sale_Conttroller>(builder: (controller) {
                  return Card_Button(name: "بترول",iconData: controller.oil_icon,onTap: controller.cheng_icon_oil,);
                },),
                GetBuilder<Details_Car_Sale_Conttroller>(builder: (controller) {
                  return Card_Button(name: "ديزل",iconData: controller.solar_icon,onTap: controller.cheng_icon_solar,);
                },),
                GetBuilder<Details_Car_Sale_Conttroller>(builder: (controller) {
                  return Card_Button(name: "غاز",iconData: controller.gas_icon,onTap: controller.cheng_icon_gas,);
                },),
                GetBuilder<Details_Car_Sale_Conttroller>(builder: (controller) {
                  return Card_Button(name: "كهرباء",iconData: controller.electricity_icon,onTap: controller.cheng_icon_electricity,);
                },),


              ],
            ),
          ),
        ),

        Expanded(

          child: Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.all(10),
            child: Text(
              "نوع الوقود",
              style: TextStyle(
                fontSize: 20,
                color: my_green2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
