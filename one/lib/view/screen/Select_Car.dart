import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/Controller_Home.dart';


class Select_Car extends StatelessWidget {

  Controller_Home controller_home=Get.put(Controller_Home());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
      itemCount:1
        ,itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10),
          height: screen_height*0.30,
          color: Colors.green,

        );
      },),
    );
  }
}
