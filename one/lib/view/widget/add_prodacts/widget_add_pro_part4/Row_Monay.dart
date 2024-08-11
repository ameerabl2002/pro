import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/add_prodacts/Add_Pro_Conttroler_Part4.dart';
import '../../../../core/shared/MyDropDowen.dart';


class Row_Monay extends StatelessWidget {


  Add_Pro_Conttroler_Part4 con=Get.put(Add_Pro_Conttroler_Part4());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              alignment: Alignment.bottomCenter,
              height: 50,
              child:GetBuilder<Add_Pro_Conttroler_Part4>(builder: (controller) {
                return MyDropDown(name_controller: con,list: con.list,hintt: "اختار العملة",selectedItem: con.selectedItem,);
              },
              ),

        ),
        ),
        SizedBox(width: 15,),
        Expanded(

          child: Container(
            height: 50,
            decoration: BoxDecoration(

              // color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: my_green),
            ),
            child: TextFormField(
              controller: con.text_money,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
                hintStyle: TextStyle(fontSize: 20,color: my_green2),
                hintText: "المبلغ",
              ),
            ),
          ),
        ),


        Container(
          width: 90,
          height: 50,
          alignment: Alignment.centerRight,
          // color: Colors.lightGreen,
          child: Text(
              " السعر *",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: my_green2
              )),
        ),

      ],
    );
  }
}
