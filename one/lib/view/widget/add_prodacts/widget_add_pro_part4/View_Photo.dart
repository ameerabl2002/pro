import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';

import 'package:one/controller/add_prodacts/Add_Pro_Conttroler_Part4.dart';
import 'package:one/view/widget/add_prodacts/widget_add_pro_part4/Card_Camara.dart';
import 'package:one/view/widget/add_prodacts/widget_add_pro_part4/Card_Camara_main.dart';


class View_Photo extends StatelessWidget {
  TextEditingController t1 = TextEditingController();
  Add_Pro_Conttroler_Part4 con = Get.put(Add_Pro_Conttroler_Part4());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: screen_height * 0.40,
          child: GridView.builder(
            itemCount: 10,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              return GetBuilder<Add_Pro_Conttroler_Part4>(
                builder: (controller) {
                    if (controller.file.isNotEmpty &&

                      index < controller.file.length) {

                    controller.f = File(controller.file[index].path);
                    return Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          // borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                        color: my_green,
                      )),
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: InkWell(
                            onLongPress: () {
                              showMenu(
                                context: context,
                                items: [
                                  PopupMenuItem(
                                    child: Text("delete"),
                                    onTap: () {
                                      controller.delete_file(index);
                                    },
                                  )
                                ],
                                position: RelativeRect.fromLTRB(28, 50, 50, 50),
                              );
                            },
                            onTap: () async {
                              var img_back = await ImagePicker().pickImage(source: ImageSource.gallery);
                              controller.update_file(img_back, index);
                            },
                            child: Image.file(
                              controller.f,
                              fit: BoxFit.cover,
                            )),
                      ),
                    );
                  } else if (index == 0) return Card_Camara_main();

                  return InkWell(
                      onTap: () async {
                        var img_back = await ImagePicker().pickImage(source: ImageSource.gallery);
                        if (img_back!.path.isNotEmpty)
                          controller.add_one_img(img_back);
                        else {
                          print("nnnnnnn");
                        }
                      },
                      child: Card_Camara());
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
