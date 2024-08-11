import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_icon_button/loading_icon_button.dart';
import 'package:one/controller/add_prodacts/Add_Pro_Conttroler_Part4.dart';
import 'package:one/view/widget/add_prodacts/widget_add_pro_part4/Card_Name_Dir.dart';
import 'package:one/core/shared/MyDropDowen.dart';
import 'package:one/view/widget/add_prodacts/widget_add_pro_part4/My_Button.dart';
import 'package:one/core/shared/Row_Bar.dart';
import 'package:one/view/widget/add_prodacts/widget_add_pro_part4/Row_Location.dart';

import '../../../core/contant/Colors_and_SizeScreen.dart';
import '../../../controller/Controller_List.dart';
import '../../widget/add_prodacts/widget_add_pro_part4/Row_Monay.dart';
import '../../widget/add_prodacts/widget_add_pro_part4/View_Photo.dart';
import '../../widget/add_prodacts/widget_add_pro_part4/Containar_Dowen_AppBar.dart';

class Add_Pro_Screen_Part4 extends StatelessWidget {

  String titleBar;

  Add_Pro_Screen_Part4({required this.titleBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: My_AppBar(titleBar),
      body: SafeArea(
        child: ListView(
          children: [
            Containar_Dowen_AppBar(),
            View_Photo(),
            Card_Name_Dir(),
            SizedBox(
              height: 10,
            ),
            Row_Monay(),
            SizedBox(
              height: 10,
            ),
            Row_Location(),
            My_Button(),
            // SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
