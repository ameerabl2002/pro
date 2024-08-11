
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../Details_Car_Sale_Conttroller.dart';

class Add_Pro_Conttroler_Part4 extends GetxController {

  List<XFile> file = [];
  File f = File("");



  late File one_file_img;
 final List<String> list=["يمني ","سعودي","دولار"];
  String? selectedItem;
  TextEditingController text_name=TextEditingController();
  TextEditingController text_dir=TextEditingController();
  TextEditingController text_money=TextEditingController();
  Details_Car_Sale_Conttroller details_car_sale_conttroller=Get.put(Details_Car_Sale_Conttroller());

  checngselectedItem(value)
  {
    selectedItem=value;
    update();
  }
  add_one_file_img(val) {
    one_file_img = File(val);
    update();
  }

  update_file(val, index) {
    file[index] = val;
    update();
  }

  add_all_file(val) {
    file.addAll(val);
    print(file.length);
    update();
  }

  delete_file(index) {
    file.removeAt(index);
    update();
  }

  add_one_img(val) {
    file.add(val);
    print(file.length);
    update();
  }


  // add_image_database()async
  // {
  //   var r =http.MultipartRequest(
  //       "post", Uri.parse("${my_http}/add_pro.php?mark=insert_image"));
  //
  //   for (var f in file) {
  //     var m = await http.MultipartFile.fromPath("image[]", f.path);
  //     r.files.add(m);
  //   }
  //   var x = await r.send();
  //   print(await x.stream.bytesToString());
  // }


// add_img_primary()async
// {
//   var v=http.MultipartRequest("post", Uri.parse("${my_http}/add_pro.php?mark=insert_image_primary_pro"));

//   var f=await http.MultipartFile.fromPath("img_primary",file[0].path);
//   v.files.add(await f);
//   var back=await v.send();
//   print(await back.stream.bytesToString());


// }



}