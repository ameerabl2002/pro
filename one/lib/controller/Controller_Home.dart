import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/core/contant/Map_Add_Pro.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/core/service/Myservises.dart';
import 'package:one/data/model/section_main.dart';

class Controller_Home extends GetxController {

  @override
  void onInit() async {
    select_selection_main();
    select_user();
    select_pro_where_view_number();
    super.onInit();
  }

  var list_pro_view_number;
  var list_main_home;
  var list_user_data_home;

  StatusRequst statusReoust_select_user = StatusRequst.none;
  Future select_user() async {

    statusReoust_select_user = StatusRequst.loading;
    update();
    String id = FirebaseAuth.instance.currentUser!.uid;

    var response = await Myservises().curd.postData(LinkApi.selectUser, {
      "id_user": id,
    });

    if (response["status"] == 'success') {
      list_user_data_home = response['data'][0];
      print("user is ok");
      statusReoust_select_user = StatusRequst.success;
    } else
      statusReoust_select_user = StatusRequst.failure;
    update();
  }


  StatusRequst statusReoust_select_selection_main = StatusRequst.none;

  select_selection_main() async {
    statusReoust_select_selection_main = StatusRequst.loading;
    update();

    var response =
        await Myservises().curd.postData(LinkApi.selectMainSection, 
          uplode_Data,
          
        );

    if (response['status'] == "success") {
      list_main_home = response['data'];
      List sectionMainList = list_main_home.map((e) => SectionMain.fromJson(e)).toList();
;
      sectionMainList.forEach(
        (element) {
          print("object=${element.toJson()}");
        },
      );
      SectionMain sectionMain2 = SectionMain(idMainSection: 2);
      sectionMain2.nameMainSection = "5";
      sectionMain2.nameImg = "5";
      print(sectionMain2.toJson());

      statusReoust_select_selection_main = StatusRequst.success;
    } else {
      statusReoust_select_selection_main = StatusRequst.failure;
      print("no select_main");
    }

    update();
  }

  update_list_pro_view_number(val) {
    list_pro_view_number = val;
    update();
  }


  StatusRequst statusReoust_select_pro_where_view_number = StatusRequst.none;
  Future select_pro_where_view_number() async {
    statusReoust_select_pro_where_view_number = StatusRequst.loading;
    update();

    var response =
        await Myservises().curd.postData(LinkApi.selectProWhereViewNumber, {});

    if (response['status'] == "success") {
      list_pro_view_number = response["data"];
      statusReoust_select_pro_where_view_number = StatusRequst.success;
    } else {
      statusReoust_select_pro_where_view_number = StatusRequst.failure;
    }
    update();
  }
}
