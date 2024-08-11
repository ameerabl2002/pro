import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/add_prodacts/Add_Pro_Conttroler_Part4.dart';
import 'package:one/controller/add_prodacts/Add_Pro_controller_Part1.dart';
import 'package:one/controller/add_prodacts/Add_Pro_controller_Part2.dart';
import 'package:one/controller/add_prodacts/Add_Pro_controller_Part3.dart';
import 'package:one/controller/Controller_List.dart';
import 'package:one/controller/Details_Car_Sale_Conttroller.dart';
import 'package:one/view/widget/widget_Details_Car_Sale/My_Colors.dart';
import 'package:one/core/shared/MyDropDowen.dart';

import 'Button_Add_CarSale.dart';
import 'Colum_Details_inCar.dart';
import 'Row_Dropdown_Walks.dart';
import 'Row_Number_Seat.dart';
import 'Row_State_Car.dart';
import '../../../core/shared/Row_Bar.dart';
import 'Row_Fuel.dart';
import 'Row_Model.dart';
import 'Row_Specific.dart';
import 'Row_Type.dart';
import 'Row_Year.dart';
import 'Card_Button.dart';

class Details_Car_Sale extends StatelessWidget {
  String name;

  Details_Car_Sale({required this.name});
  Details_Car_Sale_Conttroller details_car_sale_conttroller=Get.put(Details_Car_Sale_Conttroller());
  Conttroler_Dropdowe_year con2 = Get.put(Conttroler_Dropdowe_year());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: My_AppBar(name),
      body: SafeArea(
        child: ListView(
          children: [
            // Row_Model(),
            Row_Year(con: con2,name: 'صنة الصنع '),
            Row_Specific(),
            Row_Number_Seat(),
           Row_Dropdown_Walks(),
            Row_Type(),
            Row_State_Car(),
            Row_Fuel(),
            Colum_Details_inCar(),
           MyColors(name: ' السيارة',name_Controller:details_car_sale_conttroller),
            Button_Add_CarSale(),
          ],
        ),
      ),
    );
  }
}
