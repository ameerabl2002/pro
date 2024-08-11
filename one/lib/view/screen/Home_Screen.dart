import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/controller/Controller_Home.dart';
import 'package:one/controller/Users_Controllers.dart';

import 'package:one/view/screen/Login_screen.dart';


import '../widget/widjet_home/Edite_Search.dart';
import '../widget/widjet_home/Img_Icon.dart';
import '../widget/widjet_home/NavigationBar_Home.dart';
import '../widget/widjet_home/Row_one.dart';

import '../widget/widjet_home/Stander_Listviwe_Main.dart';
import '../widget/widjet_home/Stander_Pro_Home.dart';

class Home_Screen extends StatelessWidget {
  Controller_Home controller_home = Get.put(Controller_Home());
  Users_Controllers users_controllers = Get.put(Users_Controllers());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: NavigationBar_Home(),
       
        appBar: AppBar(
          backgroundColor: my_green,
          elevation: 0,
          title: Row(
            children: [
              Expanded(child: Text("الصفحة الرئسية")),
              Expanded(
                child: Container(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                      Get.to(() => LoginScreen());
                    },
                    child: Icon(
                      Icons.logout,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(),
        body: ListView(
          children: [
            Stack(
              children: [
                //user
                GetBuilder<Users_Controllers>(
                  builder: (controller) {
                    if (controller.statusReoust == StatusRequst.failure)
                      return Text("noooooo failure ");
                    return controller.statusReoust == StatusRequst.success
                        ? Img_Icon()
                        : CircularProgressIndicator();
                  },
                ),
                Edite_Search(),
              ],
            ),

            Row_Stander_Home(name: "ابرز الاقسام", function: () {}),
            Stander_Listviwe_Main(),
            Row_Stander_Home(name: "الاكثر مشاهدة ", function: () {}),
            GetBuilder<Controller_Home>(
              builder: (controller) {

                return controller.statusReoust_select_pro_where_view_number == StatusRequst.success
                    ? Stander_Pro_Home(
                        list_pro: controller_home.list_pro_view_number)
                    : CircularProgressIndicator();
              },
            ),

            Row_Stander_Home(name: "الاكثر مشاهدة ", function: () {}),
            GetBuilder<Controller_Home>(
              builder: (controller) {

                return controller.statusReoust_select_pro_where_view_number == StatusRequst.success
                    ? Stander_Pro_Home(
                        list_pro: controller_home.list_pro_view_number)
                    : CircularProgressIndicator();
              },
            ),


          ],
        ),
      ),
    );
  }
}
