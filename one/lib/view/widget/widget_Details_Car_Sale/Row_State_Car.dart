import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/Details_Car_Sale_Conttroller.dart';
import 'package:one/view/widget/widget_Details_Car_Sale/Card_Button.dart';


class Row_State_Car extends StatelessWidget {
  Details_Car_Sale_Conttroller details_car_sale_conttroller=Get.put(Details_Car_Sale_Conttroller());

  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          GetBuilder<Details_Car_Sale_Conttroller>(builder: (controller) {
            return Card_Button(name: "جديد",iconData: controller.new_icon,onTap: controller.cheng_new_icon,);

          },), GetBuilder<Details_Car_Sale_Conttroller>(builder: (controller) {
            return Card_Button(name: "كستخدم",iconData: controller.old_icon,onTap: controller.cheng_old_icon,);

          },),
          // Card_Button(),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.all(10),
              child: Text(
                "نوع ناقل الحركة",
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
