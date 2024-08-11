
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/core/service/Myservises.dart';
import 'package:one/core/shared/MyCheckBox_Model.dart';

import '../core/contant/Map_Add_Pro.dart';

class Details_Car_Sale_Conttroller extends GetxController {
  List list_show_image = [];
  var list_select_deatiles;
  StatusRequst statusReoust = StatusRequst.none;

  Future select_image(String id_pro) async {
    statusReoust = StatusRequst.loading;
    update();
    var response = await Myservises().curd.postData(LinkApi.selectImage, {
      "id_pro": id_pro,
    });

    if (response['status'] == "success") {
      list_show_image = response["data"];
      statusReoust = StatusRequst.success;
    } else {
      statusReoust = StatusRequst.failure;
    }
    update();
  }

  Future select_deatiles(String id_pro) async {

 statusReoust = StatusRequst.loading;
    update();
    var response = await Myservises().curd.postData(LinkApi.selectDeatilesCar, {
      "id_pro": id_pro,
    });
   

       if (response['status'] == "success") {
      list_select_deatiles = response["data"];
      statusReoust = StatusRequst.success;
    } else {
      statusReoust = StatusRequst.failure;
    }
    update();
  }

  //1
  Rx<Color> selectedColor = Colors.transparent.obs;

//2
  final List<String> number_Seat = ["1", "2", "3"];
  String? selectedItem;

  checngselectedItem(newselectedItem) {
    selectedItem = newselectedItem;
    update();
  }

  //3
  List<MyCheckBox_Model> list_check_box = [
    MyCheckBox_Model(title: "usb"),
    MyCheckBox_Model(title: "eoded"),
    MyCheckBox_Model(title: "ferfer"),
    MyCheckBox_Model(title: "frefr"),
  ];
  List<String> details_check = [];

  select_item_checkbox(i) {
    list_check_box[i].value = !list_check_box[i].value;
    if (list_check_box[i].value == true)
      details_check.add(list_check_box[i].title);
    else
      details_check.remove(list_check_box[i].title);
    update();
  }

//4
  String type = "";
  IconData otomatic_icon = Icons.check_box_outline_blank;
  IconData ade_icon = Icons.check_box_outline_blank;
  //
  String fuel = "";
  IconData oil_icon = Icons.check_box_outline_blank;
  IconData solar_icon = Icons.check_box_outline_blank;
  IconData gas_icon = Icons.check_box_outline_blank;
  IconData electricity_icon = Icons.check_box_outline_blank;
  //
  String state = "";
  IconData new_icon = Icons.check_box_outline_blank;
  IconData old_icon = Icons.check_box_outline_blank;

  cheng_icon_oil() {
    oil_icon = Icons.check_box;
    fuel = "oil";
    solar_icon = gas_icon = electricity_icon = Icons.check_box_outline_blank;
    update();
  }

  cheng_new_icon() {
    new_icon = Icons.check_box;
    state = "new";
    old_icon = Icons.check_box_outline_blank;
    update();
  }

  cheng_old_icon() {
    old_icon = Icons.check_box;
    state = "old";
    new_icon = Icons.check_box_outline_blank;
    update();
  }

  cheng_icon_solar() {
    solar_icon = Icons.check_box;
    fuel = "solar";
    oil_icon = gas_icon = electricity_icon = Icons.check_box_outline_blank;
    update();
  }

  cheng_icon_gas() {
    gas_icon = Icons.check_box;
    fuel = "gas";
    solar_icon = oil_icon = electricity_icon = Icons.check_box_outline_blank;
    update();
  }

  cheng_icon_electricity() {
    electricity_icon = Icons.check_box;
    fuel = "electricity";
    solar_icon = gas_icon = oil_icon = Icons.check_box_outline_blank;
    update();
  }

  cheng_icon_otomatic() {
    ade_icon = Icons.check_box_outline_blank;
    otomatic_icon = Icons.check_box;
    type = "otmatek";
    update();
  }

  cheng_icon_ade() {
    otomatic_icon = Icons.check_box_outline_blank;
    ade_icon = Icons.check_box;
    type = "ade";

    update();
  }

  //5

  List<String> type_list = ["الماركه", "السنه"];
  RxString name_type = "".obs;
  chengname_type(val) {
    name_type.value = val;
  }
  //6

  List list_marka = [];
  List list_year = [];
  Future<void> select_Car_Where_Marka(marka) async {

statusReoust = StatusRequst.loading;
    update();
    var response = await Myservises().curd.postData(LinkApi.selectCarWhereMarka, {
      "id_secondary_section": marka,
    });


     if (response['status'] == "success") {
      list_marka = response["data"];
      statusReoust = StatusRequst.success;
    } else {
      statusReoust = StatusRequst.failure;
    }
    update();
  }

  Future<void> select_Car_Where_Year(year) async {

    statusReoust = StatusRequst.loading;
    update();
    var response = await Myservises().curd.postData(LinkApi.selectCarWhereYear, {
      "mark": year,
    });
   
     if (response['status'] == "success") {
      list_year = response["data"];
      statusReoust = StatusRequst.success;
    } else {
      statusReoust = StatusRequst.failure;
    }
    update();
  }

  StatusRequst statusRequst_insert_pro_car_sale=StatusRequst.none;
// Future insert_pro_car_sale(File f)async
// {
//   statusRequst_insert_pro_car_sale = StatusRequst.loading;
//   update();
//  var response=await Myservises().curd.postRequestWithFile(LinkApi.insertProdactCarSale,uplode_Data,f);
//
//   if(response["status"]=="success")
//     {
//       statusRequst_insert_pro_car_sale = StatusRequst.success;
//       uplode_Data={};
//     }
//   else
//     statusRequst_insert_pro_car_sale = StatusRequst.failure;
//
//   update();
//
// }

}
