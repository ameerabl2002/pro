import 'package:get/get.dart';
import 'package:one/core/class/curd.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Myservises extends GetxService {
  Curd curd = Curd();
  late SharedPreferences sharedPreferences;
  Future<Myservises> starts() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

//***
initialServes() async {
  await Get.putAsync(() => Myservises().starts());
}
