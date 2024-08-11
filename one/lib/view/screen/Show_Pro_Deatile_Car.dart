import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/shared/Multi_option.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/add_prodacts/Add_Pro_controller_Part2.dart';
import 'package:one/controller/add_prodacts/Add_Pro_controller_Part3.dart';
import 'package:one/controller/Controller_List.dart';
import 'package:one/controller/Details_Car_Sale_Conttroller.dart';
import 'package:one/view/widget/widget_Details_Car_Sale/Type_Year.dart';
import 'package:one/view/widget/widjet_home/Row_one.dart';

import '../../core/contant/My_Them.dart';
import '../widget/widget_Details_Car_Sale/Type_Model.dart';
import '../widget/widjet_home/Stander_Pro_Home.dart';

class Show_Pro_Deatile_Car extends StatelessWidget {
  Details_Car_Sale_Conttroller details_car_sale_conttroller = Get.put(Details_Car_Sale_Conttroller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("سيارات للبيع"),
          backgroundColor: my_green,
        ),
        body: ListView(
          children: [
            Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.centerRight,
                child: Text(
                  "سيارات للبيع في اليمن ",
                  style: TextStyle(
                      fontSize: 25,
                      color: my_green2,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                alignment: Alignment.center,
                child: Multi_option(
                    list: details_car_sale_conttroller.type_list,
                    name_con: details_car_sale_conttroller,

                )

            ),
            Obx(
              () {
                return Card(
                  elevation: 5,
                  child: Container(
                      height: 300,
                      width: 200,
                      child:
                          details_car_sale_conttroller.name_type.value == "الماركه"
                              ? Type_Model()
                              : Type_Year()),
                );
              },
            ),
            Row_Stander_Home(name: "اعلانات مشابهة ", function: (){}),
            // Card(
            //   elevation: 5,
            //   child: Container
            //     (
            //
            //       child: Stander_Pro_Home(list_pro: select_pro_controller.list_pro_car)),
            // ),
          
          ],
        ),
      ),
    );
  }
}
