import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/controller/add_prodacts/Add_Pro_controller_Part1.dart';

import '../../../core/class/statusrequt.dart';
import '../../../core/contant/Map_Add_Pro.dart';
import '../../../core/shared/stander_larg_card.dart';
import '../../../core/shared/Container_AppBar.dart';
import '../../widget/add_prodacts/widget_add_pro_part1/EditText_Search_Main.dart';
import '../../widget/add_prodacts/Text_AppBar.dart';
import 'Add_Pro_Screen_Part2.dart';

class Add_Pro_Screen_Part1 extends StatelessWidget {
  Add_Pro_controller_Part1 con1 = Get.put(Add_Pro_controller_Part1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container_AppBar(),
                  Text_AppBar(appBar_title: "ماالذي تفكر  \n باضافته؟"),
                  EditText_Search_Main(),
                ],
              ),
            ),

            Expanded(
              flex: 4,
                child: GetBuilder<Add_Pro_controller_Part1>(builder: (controller) {
                  return controller.statusRequst==StatusRequst.success?
                      ListView.builder(
                      itemCount: controller.list_main.length,
                      itemBuilder: (context, index) {
                        return Stander_Larg_Card(
                          title: controller.list_main[index]["name_main_section"],
                          name_img:controller.list_main[index]["name_img"] ,
                          function: ()async{
                            // await con1.select_section_sub();
                            uplode_Data["id_main_section"]=controller.list_main[index]["id_main_section"].toString();
                            Get.to(() => Add_Pro_Screen_Part2(),
                            arguments: {
                              "id_main":controller.list_search1[index]["id_main_section"],
                            }
                            );
                          },
                        );
                      },
                      )
                      :CircularProgressIndicator();
                }
                ),
              ),

          ],
        ),
      ),
    );
  }
}
