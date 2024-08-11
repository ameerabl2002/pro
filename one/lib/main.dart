import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:one/view/screen/Home_Screen.dart';
import 'package:one/view/screen/Login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:one/view/screen/home.dart';
import 'package:one/view/screen/users/update_data_user.dart';

import 'core/lozilation/MyTranslation.dart';
import 'core/contant/My_Them.dart';
import 'core/service/Myservises.dart';
import 'controller/Local_Controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initialServes();
  // FirebaseAuth.instance.signOut();

  runApp(Rout());
}

class Rout extends StatelessWidget {
  Rout({super.key});

  Local_Controller control = Get.put(Local_Controller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: control.languge,
      theme: My_theme,

      // home: Update_Data_User(),
      home: FirebaseAuth.instance.currentUser!=null?Home ():LoginScreen(),
    );
  }
}

