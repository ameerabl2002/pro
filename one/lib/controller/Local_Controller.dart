import 'dart:ui';

import 'package:get/get.dart';
import '../core/service/Myservises.dart';

class Local_Controller extends GetxController {
  Myservises myservises = Get.find();
  late Locale languge;

  chang_lang(String lang) {
    languge = Locale(lang);
    myservises.sharedPreferences.setString("lang", lang);
    Get.updateLocale(languge);
  }

  @override
  void onInit() {
    String? s = myservises.sharedPreferences.getString("lang");
    if (s == "ar") {
      languge = Locale("ar");
      // Get.to(Add_Custoumer());
    } else if (s == "en") {
      languge = Locale("en");
      // Get.to(Add_Custoumer());
    } else {
      languge = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }

  @override
  void onReady() {
    print("object");
  }
}
