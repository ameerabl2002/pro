import 'dart:io';

import 'package:get/get.dart';
import 'package:one/controller/add_prodacts/Add_Pro_Conttroler_Part4.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/core/contant/Map_Add_Pro.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/core/service/Myservises.dart';


class Clothes_Controller extends GetxController{

  Add_Pro_Conttroler_Part4 con=Get.put(Add_Pro_Conttroler_Part4());
  List<String> shirts_type=["كاجوال", "نص كم" , "كم ظويل" ,"مقلم " ,"رسمي"];
  String? selectedItem;
  checngselectedItem(value)
  {
    selectedItem=value;
    update();
  }



}