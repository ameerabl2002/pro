import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/view/screen/Home_Screen.dart';
import 'package:one/view/screen/add_prodacts/Add_Pro_Screen_Part1.dart';

class HomeController extends GetxController {
  int currentPage = 0;
  List listPage = [
    Home_Screen(),
    Add_Pro_Screen_Part1(),
    const Column(
            mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Center(
          child: Text('notifications'),
        ),
      ],
    ),

    
  ];

  List namePage = [
    "الصفحه الرىيسيه",
    "اضافه",
   "الاشعارات",
    // "الاعدادات",
  ];
  List iconPage = [
    const Icon(Icons.home),
    const Icon(Icons.camera_alt_outlined),
    const Icon(Icons.notifications),
    // const Icon(Icons.settings),
  ];

  changePage(int i) {
    currentPage = i;
    update();
  }
}
