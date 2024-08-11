import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one/controller/Add_User_Controller.dart';

import '../../screen/Login_screen.dart';
import '../../screen/sigup_screen.dart';
import 'Start_Screen_botton.dart';

class Conten_Start_Screen extends StatelessWidget {
Add_User_Controler  con=Add_User_Controler();
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
        child: Stack(
          children: <Widget>[
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
              duration: Duration(seconds: 4),
              curve: Curves.easeInCirc,
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 40.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          right: 9,
                        ),
                        child: Text(
                          '\nWELCOME\n CHOSCE YOUR WAY',
                          style: TextStyle(
                            letterSpacing: 1.5,
                            fontFamily: 'OpenSans',
                            color: Colors.white,
                            fontSize: 27.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Container(
                        height: 300,
                        child: Image.asset(
                          'assets/image/iconforstart.png',
                          fit: BoxFit.cover,
                        )),
                    Start_Button(tital:         'CREATE A NEW ACCOUNT',
                        onpress: (){Get.to(Sigup_Screen());}),

                    Start_Button(tital:         'LOGIN IF YOU HAVE ACCOUNT ',
                        onpress: (){Get.to(LoginScreen());}),
                    Start_Button(tital:         'I JUST WANT SEEE ',
                        onpress: (){con.just_see();
                    }),
                  ],
                ),
              ),
            )
          ],
        ));


  }
}