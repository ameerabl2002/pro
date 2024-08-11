import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/core/contant/Map_Add_Pro.dart';
import 'package:one/controller/add_prodacts/Add_Pro_Conttroler_Part4.dart';
import 'package:one/controller/add_prodacts/Add_Pro_controller_Part1.dart';
import 'package:one/controller/Controller_List.dart';
import 'package:one/controller/Details_Car_Sale_Conttroller.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/core/service/Myservises.dart';
import 'package:one/core/function/My_AlertDiloge.dart';

import '../../../controller/add_prodacts/Controller_AddStander.dart';
import '../../screen/home.dart';

class Button_Add_CarSale extends StatelessWidget {

  Conttroler_Dropdowe_year conttroler_dropdowe_year = Get.find();
  Conttroler_Dropdowe_Specific conttroler_dropdowe_specific = Get.find();
  Details_Car_Sale_Conttroller details_car_sale_conttroller=Get.find();
  Conttroler_Dropdown_Walks conttroler_dropdown_walks=Get.put(Conttroler_Dropdown_Walks());
  Controller_AddStander controller_addStander=Get.put(Controller_AddStander());


  @override
  Widget build(BuildContext context) {
    return                Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
      color: my_green,
      child: InkWell(
        onTap: () {


                    if(conttroler_dropdowe_year.selectedItem.toString()=="null")
            my_AlertDiloge(observed: "يجب اضافة سنة الصنع");
          else if(conttroler_dropdowe_specific.selectedItem.toString()=="null")
            my_AlertDiloge(observed: "يجب اضافة مواصفات");
 else if(details_car_sale_conttroller.selectedItem.toString()=="null")
            my_AlertDiloge(observed: "يجب تحديد عدد المقاعد");
else if(conttroler_dropdown_walks.selectedItem.toString()=="null")
            my_AlertDiloge(observed: "يجب تحديد كم ماشي");

else if(details_car_sale_conttroller.type=="")
            my_AlertDiloge(observed: "يجب تحديد نوع ناقل الحركة ");
  else if(details_car_sale_conttroller.state=="")
            my_AlertDiloge(observed: "يجب تحديد حالة السيارة");
else if(details_car_sale_conttroller.fuel=="")
            my_AlertDiloge(observed: "يجب تحديد نوع الوقود");
else if(details_car_sale_conttroller.details_check.isEmpty)
            my_AlertDiloge(observed: "يجب تحديد المواصفات السيارة");
 else  if(details_car_sale_conttroller.selectedColor.value.value==0)
            my_AlertDiloge(observed: "يجب تحديد اللون");
 else
   {
     String details_inCar;
     details_inCar= details_car_sale_conttroller.details_check.toString();
     details_inCar=details_inCar.substring(1);
     details_inCar=details_inCar.substring(0,details_inCar.length-1);
     details_inCar=details_inCar.trim();
     uplode_Data["year"]=conttroler_dropdowe_year.selectedItem.toString();
     uplode_Data["speci"]=conttroler_dropdowe_specific.selectedItem.toString();
     uplode_Data["number_of_seats"]=details_car_sale_conttroller.selectedItem.toString();
     uplode_Data["how_walks"]= conttroler_dropdown_walks.selectedItem.toString();
     uplode_Data["features"]=details_inCar;
     uplode_Data['state']= details_car_sale_conttroller.state;
     uplode_Data['fuel_type']=details_car_sale_conttroller.fuel;
     uplode_Data['movement_type']=details_car_sale_conttroller.type;
       uplode_Data["color_car"]=details_car_sale_conttroller.selectedColor.value.value.toString();
       print(uplode_Data);

       controller_addStander.add_pro_stander(LinkApi.insertProdactCarSale);
       Get.to(()=>Home());

     // add_pro.add_image_database();

   }
        },
        child:GetBuilder<Details_Car_Sale_Conttroller>(builder:(controller) {
          return Container(
              alignment: Alignment.center,
              height: screen_height*0.07,
              width: double.infinity,

              child:
              details_car_sale_conttroller.statusRequst_insert_pro_car_sale==StatusRequst.success?
              Icon(Icons.check):
              Text("اضافة الاعلان",style: TextStyle(
                fontSize: 30,
                color: my_green2,
                fontWeight: FontWeight.bold,
              ),)
          );
        },)


      ),
    );
  }
}
