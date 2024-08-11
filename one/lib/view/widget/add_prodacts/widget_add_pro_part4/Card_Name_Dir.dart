import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/add_prodacts/Add_Pro_Conttroler_Part4.dart';
import 'package:one/view/screen/add_prodacts/Add_Pro_Screen_Part4.dart';

class Card_Name_Dir extends StatelessWidget {
  Add_Pro_Conttroler_Part4 con = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

      // color: Colors.blue.withOpacity(0.3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Stack_All(name: "اسم للاعلان ووصفة", number: "2"),
          Text(
            " اسم الاعلان *",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
                color: my_green2,
            ),
          ),
          Container(
            // height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.black),
            ),
            child: TextFormField(
              controller: con.text_name,
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
                hintStyle: TextStyle(fontSize: 20, color: my_green2),
                hintText: "ادخل اسم الاغلان هنا مثل (كامري 2015)",
              ),
            ),
          ),
          Text(
            " وصف الاعلان *",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: my_green2),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black),
            ),
            child: TextFormField(
              controller: con.text_dir,
              maxLines: 5,
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.all(10),
                hintStyle: TextStyle(fontSize: 20, color: my_green2),
                hintText: "ادخل هنا وصف الاعلان مالايقل عن 100 حرف",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
