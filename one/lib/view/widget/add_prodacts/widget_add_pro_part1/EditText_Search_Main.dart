import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/add_prodacts/Add_Pro_controller_Part1.dart';
class EditText_Search_Main extends StatelessWidget {


  Add_Pro_controller_Part1 con=Get.find();
  @override
  Widget build(BuildContext context) {
    return Card(

      margin: EdgeInsets.only(top: screen_height*0.14,right: screen_width*0.08,left: screen_width*0.08),
      elevation: 8,
      // shadowColor: Colors.lightGreenAccent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color:my_green)
      ),
      child:  TextFormField(
          onChanged: (value) {
            con.search_Main(value);
          },

          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              icon: Icon(Icons.search_rounded,size: 30,),
              hintText: "البحث عن القسم الذي تريدة",
              contentPadding: EdgeInsets.only(left: 80)
          ),
        ),

    );
  }
}
