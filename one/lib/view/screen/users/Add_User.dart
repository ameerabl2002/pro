import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/view/screen/Home_Screen.dart';
import 'package:one/view/widget/widget_profile/app_defaults.dart';

import '../../../controller/Users_Controllers.dart';
import '../../widget/Go_To_Button.dart';
import '../../widget/widet_start/Bulid_Sig_Btn.dart';
import '../../widget/widet_start/Stander_Edit.dart';

class Add_User extends StatelessWidget {
  Users_Controllers users_controllers = Get.put(Users_Controllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            padding: EdgeInsets.all(AppDefaults.padding),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.green.shade400,
                    Colors.green.shade500,
                    Colors.green.shade700,
                    Colors.green.shade700,
                  ]),
            ),
            child: ListView(children: [
              SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () async {
                  users_controllers.user_img = await ImagePicker().pickImage(source: ImageSource.gallery);
                  print(users_controllers.user_img);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 180,
                  width: 150,
                  child: ClipPath.shape(
                      shape: CircleBorder(),
                      child: users_controllers.user_img == null
                          ? Image.asset("assets/image/mm.jpg",
                              fit: BoxFit.cover)
                          : Image.file(File(users_controllers.user_img.path))),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: FadeInLeft(
                  child: Stander_Edite_Text(
                      con: users_controllers.name_user,
                      hint: "ادخل الاسم",
                      iconData: Icons.person,
                      title: "email"),
                  duration: Duration(milliseconds: 500),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: FadeInLeft(
                  child: Stander_Edite_Text(
                      con: users_controllers.phone_user,
                      hint: "ادخل رقم الهاتف",
                      iconData: Icons.person,
                      title: "email"),
                  duration: Duration(milliseconds: 500),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: BuildLoginBtn(
                      name: "ok", onprase:()async{
                        users_controllers.add_user();

                      }
                      )
              )
            ]),
          )
        ],
      ),
    );
  }
}
