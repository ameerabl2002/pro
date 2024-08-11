
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Computer_Deatise.dart';
int conut=0;
class Controller_check extends GetxController{

   List select=(Computer_Deatise.all[0]);
   Rx<Color> selectedColor = Colors.transparent.obs;

  void chang_select( ){
   select= Computer_Deatise.all[conut];
   conut++;
    update();
  }
}