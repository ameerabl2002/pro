import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';


import 'package:get/get.dart';
import 'package:one/view/screen/Home_Screen.dart';
import 'package:one/view/screen/Login_screen.dart';
import 'package:one/view/screen/sigup_screen.dart';
import 'package:one/view/screen/users/Add_User.dart';
import 'package:one/core/function/My_AlertDiloge.dart';
import 'dart:async';

import 'Users_Controllers.dart';

class Add_User_Controler extends GetxController {
  RxBool x = false.obs;

  TextEditingController Emailfild = TextEditingController();
  TextEditingController passfild = TextEditingController();
  TextEditingController passfildsure = TextEditingController();

  TextEditingController Emailfildlog = TextEditingController();
  TextEditingController passfildlog = TextEditingController();

  create_User(String email, String password) async {

    try {
      final cedent = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      print(cedent.user);
      FirebaseAuth.instance.currentUser!.sendEmailVerification();
      my_AlertDiloge(
          title: "لقد ارسلنا الرابط الى الايميل  ${Emailfild.text}",
          observed: ("قم بالدخول لاكمال الاجراءت"),
          onpress: () {});

      Timer.periodic(Duration(seconds: 1), (timer) async {
        if(FirebaseAuth.instance.currentUser!=null) {
          FirebaseAuth.instance.currentUser!.reload();
          bool a = FirebaseAuth.instance.currentUser!.emailVerified;
          if (a==true) {
            Get.to(Add_User());
            timer.cancel();
          }
        }
      }
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        my_AlertDiloge(
            observed: 'كلمة السر ضعيفة', onpress: Get.to(Sigup_Screen()));
      } else if (e.code == 'email-already-in-use') {
        my_AlertDiloge(
            title: "خطا",
            observed: 'هذا الايميل مستخدم بالفعل',
            onpress: () {});
      }
    } catch (e) {
      print(e);
    }

    update();
  }

  nn() {
    try {
      x.value = FirebaseAuth.instance.currentUser!.emailVerified;
    } catch (e) {
      print('${e.runtimeType}+dksflvm');
    }
  }


  sigin(String signinEmail, String signinPassword) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: signinEmail, password: signinPassword);
      print("okkkkkkkkkkkkkkk");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        print('Firebase Authentication Exception: ${e.code}/////////////');

      } else if (e.code == 'user-not-found') {
        print('Firebase Authentication Exception: ${e.code}/////////////');

      } else if (e.code == 'wrong-password') {
        print('Firebase Authentication Exception: ${e.code}/////////////');

      }
    } catch (e) {
      print('Firebase Authentication Exception: $e/////////////');

    }
  }


  login(String email,String password) async {
    Users_Controllers users_controllers=Get.put(Users_Controllers());
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.toString().trim(), password: password.toString().trim());
      if (FirebaseAuth.instance.currentUser!.emailVerified == true) {
        Get.offAll(()=>Home_Screen());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print("nommmmmmmmmmmm");
        my_AlertDiloge(
            title: "خطا",
            observed: 'هذا الايميل غير موجود ',
            onpress: (){} );
      } else if (e.code == 'wrong-password') {
        print("wrong-password");
        my_AlertDiloge(
            title: "خطا",
            observed: 'كلمة السر غير صحيحة',
            onpress: Get.off(LoginScreen()));
      }
    } catch (e) {
      print(('dsfdvvdvb]\n bgvb b\n'));
    }
    update();
  }

  siginout() async {
    print('vccvvcb ${FirebaseAuth.instance.currentUser}');
    if (FirebaseAuth.instance.currentUser != null)
      await FirebaseAuth.instance.signOut();
  }

  Future check_Email() async {
    while (true) {
      if (await FirebaseAuth.instance.currentUser?.emailVerified == true) {
        print('\n\ \n\ bfbb \n\ g\n\ \n dfgb');
        break;
      }
    }
  }

  just_see() async {
    try {
      final userCredential = await FirebaseAuth.instance.signInAnonymously();
      Get.off(Home_Screen());
      print("Signed in with temporary account.");
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          print("Anonymous auth hasn't been enabled for this project.");
          break;
        default:
          print("Unknown error.");
      }
    }
  }

  forget_Password(String email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}
