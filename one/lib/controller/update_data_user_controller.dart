
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Map_Add_Pro.dart';

import '../core/class/statusrequt.dart';
import '../core/contant/linkapi.dart';
import '../core/service/Myservises.dart';
class Update_Data_User_Controller extends GetxController
{

  @override
  void onInit() {
    select_user();
  }

  TextEditingController name_user=TextEditingController();
  TextEditingController phone_user=TextEditingController();

  var list_user_updata;
  var updata_img_user;
  File file=File("");
  chang(val)
  {
    file=File(val);
    update();
  }
  StatusRequst statusReoust_select_user = StatusRequst.none;
  Future select_user() async {

    statusReoust_select_user = StatusRequst.loading;
    update();
    String id = FirebaseAuth.instance.currentUser!.uid;

    var response = await Myservises().curd.postData(LinkApi.selectUser, {
      "id_user": id,
    });

    if (response["status"] == 'success') {
      list_user_updata = response['data'][0];
      print("user is ok updata ${list_user_updata}");
      statusReoust_select_user = StatusRequst.success;
    } else
      statusReoust_select_user = StatusRequst.failure;
    update();
  }



  update_data_user()async
  {
    uplode_Data["id_user"] = FirebaseAuth.instance.currentUser!.uid;
    if (name_user.text != null)
      uplode_Data["name_user"] = name_user.text;
    else
      uplode_Data["name_user"] = list_user_updata["name_user"];
    if (phone_user.text != null)
      uplode_Data["phone_user"] = phone_user.text;
    else
      uplode_Data["phone_user"] = list_user_updata["phone_user"];
    print("dddddddddddddddd ${file.path}");
    if (file.path!= "") {
      var response = await Myservises().curd.postRequestWithFile_user(
          LinkApi.update_user, uplode_Data, file);
      if (response['status'] == "success") {
        print("okkkkkkkkkkkk update");
      }
      else {
        print("noooooooooooo update");
      }
    }
    else {
      file = File(list_user_updata["name_img"]);

      var response = await Myservises().curd.postRequestWithFile_user(
          LinkApi.update_user, uplode_Data, file);
      if (response['status'] == "success") {
        print("okkkkkkkkkkkk update");
      }
      else {
        print("noooooooooooo update");
      }
    }

  }
}