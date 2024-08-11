import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/core/service/Myservises.dart';
import 'package:one/view/screen/Home_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../core/class/statusrequt.dart';

class Users_Controllers extends GetxController {
  StatusRequst statusReoust = StatusRequst.none;
  @override
  void onInit() {
    select_user();
    super.onInit();
  }

  var user_img;
  TextEditingController name_user = TextEditingController();
  TextEditingController phone_user = TextEditingController();

var user_data;

  Future add_user() async {
    File f=File(user_img.path);
    statusReoust = StatusRequst.loading;
    update();
    String id = FirebaseAuth.instance.currentUser!.uid;
    print(user_img);
    var response = await Myservises().curd.postRequestWithFile_user(
        LinkApi.insertUser,
        {
          "id_user": id.toString(),
          "name_user": name_user.text,
          "phone_user": phone_user.text,
        },
        f);
    print("${response} ====================");
    if (response['status'] == "success") {
      statusReoust = StatusRequst.success;
      Get.to(Home_Screen());
    } else {
      statusReoust = StatusRequst.failure;
    }
    update();
  }

  Future select_user() async {
    statusReoust = StatusRequst.loading;
    update();
    String id = FirebaseAuth.instance.currentUser!.uid;

    var response = await Myservises().curd.postData(LinkApi.selectUser, {
      "id_user": id,
    });

    if (response['status'] == "success") {
      user_data = response["data"][0];
      print(user_data);
      statusReoust = StatusRequst.success;
    } else {
      statusReoust = StatusRequst.failure;
    }

    update();
  }

  late Map<String, dynamic> list_data_user_sale_pro;

  // Future mySelect({required String link,required String mark, var data} )async
  // {
  //   statusReoust=StatusReoust.loading;
  //   update();
  //   var data_res;
  //   var r = await http.post(Uri.parse("${link}?mark=${mark}"),
  //       body: {
  //        "id_user":"1",
  //       }
  //   );
  //
  //   var rr=json.decode(r.body);
  //   data_res=rr["data"];
  //  print(data_res);
  //  statusReoust=StatusReoust.success;
  //  update();
  //   return data_res;
  // }
}
