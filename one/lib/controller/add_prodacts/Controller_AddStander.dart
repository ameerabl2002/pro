import 'dart:io';

import 'package:get/get.dart';
import 'package:one/controller/add_prodacts/Add_Pro_Conttroler_Part4.dart';
import 'package:one/core/class/statusrequt.dart';

import '../../core/contant/Map_Add_Pro.dart';
import '../../core/contant/linkapi.dart';
import '../../core/service/Myservises.dart';


class Controller_AddStander extends GetxController{

  Add_Pro_Conttroler_Part4 con=Get.put(Add_Pro_Conttroler_Part4());
StatusRequst statusRequst=StatusRequst.none;
  add_pro_stander(String link)async
  {
    statusRequst=StatusRequst.loading;
    update();
    var response=await Myservises().curd.postRequestWithFile(link, uplode_Data,con.file);

    if(response["status"]=="success")
      {
        print("okkkkkkk  ${response}");
   statusRequst=StatusRequst.success;
        uplode_Data={};
      }
    else
      statusRequst=StatusRequst.failure;

  }

}