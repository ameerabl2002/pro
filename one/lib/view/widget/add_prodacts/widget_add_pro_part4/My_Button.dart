import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_icon_button/loading_icon_button.dart';
import 'package:one/controller/add_prodacts/Controller_AddStander.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:loading_icon_button/loading_icon_button.dart';
import 'package:one/core/contant/Map_Add_Pro.dart';
import 'package:one/controller/add_prodacts/Add_Pro_Conttroler_Part4.dart';
import 'package:one/controller/add_prodacts/Clothes_Controller.dart';
import 'package:one/controller/Controller_List.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/core/service/Myservises.dart';
import 'package:one/view/screen/add_prodacts/Add_Pro_Screen_Part3.dart';
import 'package:one/view/screen/add_prodacts/Clothes_main.dart';
import 'package:one/view/screen/Home_Screen.dart';
import 'package:one/view/screen/home.dart';
import 'package:one/view/widget/widget_Details_Car_Sale/Details_Car_Sale.dart';

import '../../../../core/function/My_AlertDiloge.dart';



class My_Button extends StatelessWidget {


  Add_Pro_Conttroler_Part4 con_image=Get.put(Add_Pro_Conttroler_Part4());
  Conttroler_Dropdown_Location conttroler_dropdown_location=Get.put(Conttroler_Dropdown_Location());
  Controller_AddStander controller_addStander=Get.put(Controller_AddStander());

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 20),
      elevation: 8,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: my_green,
            width: 2,
          )),
      child: Container(
        height: 70,
        width: double.infinity,
        child: MaterialButton(
          onPressed: () {

            if(con_image.file.isEmpty)
              my_AlertDiloge(observed: "من الضروري اضافة صور للاعلان");

          else  if(con_image.file.length<3)
              my_AlertDiloge(observed:"يجب ان لا تقل الصور عن ثلاث صور");

            // else
            //   b+=1;
          else if(con_image.text_name.text.length<10 )
            my_AlertDiloge(observed:"اسم الاعلان صغير");
          // else
          //   // b+=1;
             else if(con_image.text_dir.text.length<10)
              my_AlertDiloge(observed:"الوصف قصير");
            // else
            //   b+=1;
           else if(con_image.text_money.text.length<3)
              my_AlertDiloge(observed:"ادخل مبلغ سع الناس");
            // else
            //   b+=1;
           else if(con_image.selectedItem==null) {
              my_AlertDiloge(observed:"يجب تجديد نوع العملة");
            }
           else if(conttroler_dropdown_location.selectedItem==null)
              my_AlertDiloge(observed:"يجب تجديد الموقع ");


            else {

              uplode_Data["name_prodact"]=con_image.text_name.text;
             uplode_Data["dir_prodact"]=con_image.text_dir.text;
             uplode_Data["price_prodact"]=con_image.text_money.text;
             uplode_Data["type_money"]=con_image.selectedItem!;
             uplode_Data["location"]=conttroler_dropdown_location.selectedItem!;
             uplode_Data["user_number"]=FirebaseAuth.instance.currentUser!.uid;

//id_main_section==1
             if(uplode_Data["id_main_section"]=="1") {
               if (uplode_Data["id_sub_section"] == "1")
                 Get.to(() => Details_Car_Sale(name: "سيارات للبيع",));
               else if (uplode_Data["id_sub_section"] == "2") {
                 uplode_Data["id_secondary_section"]="0";
                controller_addStander.add_pro_stander(LinkApi.insertProStander);

               }

             }
//id_main_section==2

             else if(uplode_Data["id_main_section"]=="2")
              {
               if(uplode_Data["id_sub_section"]=="7")
                 {
                   uplode_Data["id_secondary_section"]="0";
                   Clothes_Controller clothes_controller=Get.put(Clothes_Controller());
                   Get.to(()=>Clothes_Main(name_controller: clothes_controller, list: clothes_controller.shirts_type, hintt: "نووع القميص"));
                 }

              }

             else
               {
                 controller_addStander.add_pro_stander(LinkApi.insertProStander);

                 my_AlertDiloge(observed: "تمت الاضفاة",title: "ok",onpress: (){
                   Get.to(()=>Home());
                 });
               }
            }
            },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: my_green2,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "اضافة",
                style: TextStyle(fontSize: 30, color: my_green2),
              ),
            ],
          ),
          color: Colors.white,
        ),
      ),
    );
  }
}
