

import 'dart:convert';

import 'package:animate_do/animate_do.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';
import 'package:one/controller/Add_User_Controller.dart';
import 'package:one/view/screen/Home_Screen.dart';
import 'package:one/core/function/My_AlertDiloge.dart';
import 'package:one/view/widget/widet_start/socal_botton.dart';
import 'package:flutter/material.dart';
import '../../screen/Login_screen.dart';
import '../../screen/sigup_screen.dart';
import '../Go_To_Button.dart';
import 'Bulid_Sig_Btn.dart';
import 'Forget_Pass_botton.dart';
import 'Stander_Edit.dart';

class Conten_Login_Screen extends StatelessWidget {
  Add_User_Controler con=Get.put(Add_User_Controler());

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors:   [
                    Colors.green.shade400,
                    Colors.green.shade500,
                    Colors.green.shade700,
                    Colors.green.shade700,]
                ),
              ),
            ),
            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 120.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    FadeInLeft(
                      child: Stander_Edite_Text(con: con.Emailfildlog,
                          hint: "enter the email",
                          iconData: Icons.email,
                          title: "email"),
                      duration: Duration(milliseconds: 500),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),

                    FadeInLeft(
                      duration: Duration(milliseconds: 900),
                      child: Stander_Edite_Text(con: con.passfildlog,
                          hint: "enter the password",
                          iconData: Icons.password,
                          title: "password"),
                    ),
                    SizedBox(height: 10,),
                    BuildForgotPasswordBtn (onpress: ()async{
                      if(con.Emailfildlog.text==""){
                        my_AlertDiloge(observed: 'قم بادراج البريد اولا',title: 'خطا',onpress:());

                      }
                      else {
                        con.forget_Password(con.Emailfildlog.text) ;

                      }

                      },

                    )
                    ,SizedBox(height: 2),


                    FadeInLeft(
                      child: BuildLoginBtn(name: "LOGIN",onprase: ()async {

                       await con.login(con.Emailfildlog.text, con.passfildlog.text);
                       // await con.sigin(con.Emailfildlog.text, con.passfildlog.text);
                      }
                      ),
                      duration: Duration(milliseconds: 1000),
                    ),

                    FadeInLeft(
                      child: BuildSignInWithText(),
                      duration: Duration(milliseconds: 1300),
                    ),
                    FadeInLeft(
                      child: buildSocialBtnRow(),
                      duration: Duration(milliseconds: 1300),
                    ),
                    FadeInLeft(
                      child: Build_Go_to(tital: "SIG UP",dirc: 'Dont have an accunt ?',onprase: (){
                        Get.to(Sigup_Screen());
                      }),
                      duration: Duration(milliseconds: 1500),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
