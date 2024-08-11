
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/core/contant/Map_Add_Pro.dart';
import 'package:one/controller/add_prodacts/Clothes_Controller.dart';
import 'package:one/controller/Size_Clothes_Controller.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/view/screen/Home_Screen.dart';
import 'package:one/core/function/My_AlertDiloge.dart';
import 'package:one/core/shared/MyDropDowen.dart';

import '../../../core/shared/ButStander.dart';
import '../../../controller/Controller_Colors.dart';
import '../../../controller/add_prodacts/Controller_AddStander.dart';
import '../../../core/shared/Continaer_Color.dart';
import '../../widget/Multi_opthin2.dart';
import '../../widget/widget_Prodact_Details/MyDivider.dart';
import '../../widget/widjet_home/Row_one.dart';

class Clothes_Main extends StatelessWidget {

 var name_controller;
 List<String> list;
 String hintt;
 Clothes_Main({required this.name_controller,required this.list,required this.hintt});

  Controller_Colors controller_colors = Get.put(Controller_Colors());
  Size_Clothes_Controller size_clothes_controller =Get.put(Size_Clothes_Controller());
 Controller_AddStander controller_addStander=Get.put(Controller_AddStander());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(child: Text("اضافة التفاصيل")),
              Expanded(child: Container(
                  alignment: Alignment.topLeft,
                  child: BackButtonIcon())),
            ],
          ),
          elevation: 0,
          backgroundColor: my_green,
        ),
        body: ListView(
          children: [
            SizedBox(height: 20,),
            Row_Stander_Home(name: "حدد الالوان المتوفرة",function: (){},),
            Continaer_Color(),

            Row_Stander_Home(name: "حدد المقاسات المتوفرة",function: (){},),
            MyDivider(),
            SizedBox(height: 20,),
            Center(child: Multi_option2(list: ['small', 'mediam','large','xlarge','xlarge','3xlarge'],name_con:size_clothes_controller,)),
            MyDivider(),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.centerRight,
                      child: Text(
                        "حدد النوع",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: my_green2),
                      )
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: GetBuilder<Clothes_Controller>(builder: (controller) {
                    return Container(
                        child: MyDropDown(name_controller: name_controller, list: list, hintt: hintt, selectedItem:name_controller.selectedItem));
                  },
                  ),
                ),
              ],
            ),
            MyDivider(),
            SizedBox(height: 20,),

            ButStander(
              title: "اضافة",
              color: Colors.white,
              height: 60,
              function: ()async{
                String colors;
                colors= controller_colors.color_pro.toString();
                colors=colors.substring(1);
                colors=colors.substring(0,colors.length-1);
                colors=colors.trim();
               String size;
                size= size_clothes_controller.size.toString();
                size=size.substring(1);
                size=size.substring(0,size.length-1);
                size=size.trim();
               uplode_Data["colors"]=colors;
               uplode_Data["size"]=size;
               uplode_Data["type_clothes"]= name_controller.selectedItem;
             print(uplode_Data);
             controller_addStander.add_pro_stander(LinkApi.insertProClothes);
               // await add_pro.add_pro_clothes();
               // await  add_pro.add_image_database();
               my_AlertDiloge(observed: "ok",onpress: (){
                 Get.offAll(()=>Home_Screen());
               },title: "okkkkkk");
               },

              color_border: my_green,
              fontsize: 25,
              horizontal: 30,
            ),
          ],
        ),
      ),
    );
  }
}

