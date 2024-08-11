import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/core/contant/Map_Add_Pro.dart';
import 'package:one/core/contant/linkapi.dart';
import '../../../core/contant/My_Them.dart';
import '../../../controller/add_prodacts/Add_Pro_controller_Part2.dart';
import '../../../controller/add_prodacts/Add_Pro_controller_Part3.dart';
import '../../../core/shared/Container_AppBar.dart';
import '../../widget/add_prodacts/Text_AppBar.dart';
import '../../widget/add_prodacts/widget_add_pro_part3/Card_Secandary.dart';
import 'Add_Pro_Screen_Part4.dart';

class Add_Pro_Screen_Part3 extends StatelessWidget {
  String name;

  Add_Pro_controller_Part3 con1 = Get.put(Add_Pro_controller_Part3());

  Add_Pro_Screen_Part3({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container_AppBar(),
                  Text_AppBar(appBar_title: " اضف  \n ${name}  "),
                  // EditText_Search(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

           Expanded(
             flex: 5,
             child: GetBuilder<Add_Pro_controller_Part3>(builder: (controller) {
                  return controller.statusRequst==StatusRequst.success?
                    GridView.builder(
                    itemCount: controller.list_search3.length,
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 3),
                    itemBuilder: (context, index) {
                      return Card_Secandary(
                        nameImg:
                        "${LinkApi.server}admain/imgselction/${controller.list_search3[index]["name_img"]}",
                        nameText: controller.list_search3[index]
                        ["name_secondary_section"],
                        function: () {
                          uplode_Data["id_secondary_section"] = controller.list_search3[index]["id_secondary_section"].toString();
                          Get.to(Add_Pro_Screen_Part4(
                              titleBar: controller.list_search3[index]["name_secondary_section"])
                          );
                        },
                      );
                    },
                  ):CircularProgressIndicator();
                },
                ),
           ),



          ],
        ),
      ),
    );
  }
}
