import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/core/contant/Map_Add_Pro.dart';
import 'package:one/controller/add_prodacts/Add_Pro_Conttroler_Part4.dart';
import 'package:get/get.dart';

class Card_Camara_main extends StatelessWidget {
  Add_Pro_Conttroler_Part4 con = Get.put(Add_Pro_Conttroler_Part4());

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
          onTap: () async {
            var file_loc = await ImagePicker().pickMultiImage();
            if (file_loc.length > 10)
              Get.defaultDialog(
                title: "اضقت صور كثيرر",
              );
            else {
              con.add_all_file(file_loc);

            }
            },
          child:Card(
            color: my_green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  color: Colors.white,
                )),
            child:
            Container(
              height: screen_height * 0.10,
              width: screen_width * 0.30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.camera_alt_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                  Text(
                    "الرئسيىة",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),

          ));


  }
}
