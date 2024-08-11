

import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/view/screen/Home_Screen.dart';
import 'package:one/view/screen/start_screen.dart';
import 'package:one/view/widget/widet_start/socal_botton.dart';

import '../../../controller/Add_User_Controller.dart';
import '../../../controller/Users_Controllers.dart';
import '../../screen/Login_screen.dart';
import '../../screen/users/Add_User.dart';
import '../Go_To_Button.dart';
import '../../../core/function/My_AlertDiloge.dart';
import 'Bulid_Sig_Btn.dart';
import 'Stander_Edit.dart';

class Conten_Sinup_Screen extends StatelessWidget {
  Add_User_Controler con=Get.put(Add_User_Controler());

  @override
  Widget build(BuildContext context) {
    // Timer.periodic(Duration(seconds: 1), (timer) async {
    //   if(FirebaseAuth.instance.currentUser!=null) {
    //     FirebaseAuth.instance.currentUser!.reload();
    //     bool a = FirebaseAuth.instance.currentUser!.emailVerified;
    //     if (a==true) {
    //         Get.to(Add_User());
    //       timer.cancel();
    //     }
    //   }
    // }
    // );
    return GestureDetector(child:
    Stack(
      children: [
        Container(
          height: double.infinity,
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

              ],
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.bounceInOut,
          height: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 120.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeIn(
                    child: Container(
                        margin: const EdgeInsets.only(right: 100, left: 9),
                        child: const Text(
                          'Create new \n account',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ))),
                const SizedBox(
                  height: 30.0,
                ),
                FadeInRight(
                  duration: const Duration(milliseconds: 300),
                  child: Stander_Edite_Text(con: con.Emailfild,
                      hint: "enter the email",
                      iconData: Icons.email,
                      title: "email"),
                ),
                FadeInRight(
                  duration: const Duration(milliseconds: 300),
                  child: Stander_Edite_Text(con:con.passfild,
                      hint: "enter the password",
                      iconData: Icons.password,
                      title: "password"),
                ),
                FadeInRight(
                  duration: const Duration(milliseconds: 300),
                  child: Stander_Edite_Text(con: con.passfildsure,
                      hint: "Suer  the password",
                      iconData: Icons.security,
                      title: "Suer passwoerd"),


                ),                    SizedBox(height: 30,),

                FadeInRight(
                  child:Obx((){

                    return Column(
                      children: [
                        Text(con.x.value.toString()),
                        BuildLoginBtn(name: 'ok',onprase: ()async {
                          if(con.passfildsure.text!=con.passfild.text||con.passfildsure.text==""){
                             my_AlertDiloge( title:"خطا",onpress:(),observed: "كلمة المرور غير متطابقة");
                          }else{

                          await   con.create_User(con.Emailfild.text, con.passfild
                              .text);



                        }}),
                      ],
                    ); }),
                    duration: const Duration(milliseconds: 400),
                    ),
                    FadeInRight(
                    child: const BuildSignInWithText(),
                    duration: const Duration(milliseconds: 700),
                    ),
                    FadeInRight(
                    duration: const Duration(milliseconds: 800),
                    child: buildSocialBtnRow(),
                    ),
                    FadeInRight(
                    duration: const Duration(milliseconds: 1000),
                    child:  Build_Go_to
                  (dirc: 'Alredy have an account',tital: "SIG IN",onprase: (){
                    con.siginout();
                      Get.off(LoginScreen());}

                    ) ),
              ],
            ),
          ),
        )
      ],
    ),
    );
  }
}