import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/add_prodacts/Add_Pro_controller_Part1.dart';

import '../../../controller/add_prodacts/Add_Pro_controller_Part2.dart';
import '../../../core/class/statusrequt.dart';
import '../../../core/contant/Map_Add_Pro.dart';
import '../../../core/contant/My_Them.dart';
import '../../../core/shared/stander_larg_card.dart';
import '../../../core/shared/Container_AppBar.dart';
import '../../widget/add_prodacts/widget_add_pro_part1/EditText_Search_Main.dart';
import '../../widget/add_prodacts/Text_AppBar.dart';
import '../../widget/add_prodacts/widget_add_pro_part2/EditText_Search_Sub.dart';
import 'Add_Pro_Screen_Part3.dart';
import 'Add_Pro_Screen_Part4.dart';

class Add_Pro_Screen_Part2 extends StatelessWidget {

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
                  Text_AppBar(appBar_title: "اختار قسم\n محدد"),
                  EditText_Search_Sub(),
                ],
              ),
            ),
            Expanded(
              flex:4,
              child: GetBuilder<Add_Pro_controller_Part2>(builder: (controller) {
                return controller.statusRequst==StatusRequst.success?
                ListView.builder(
                  itemCount: controller.list_sub.length,
                  itemBuilder: (context, index) {
                    return Stander_Larg_Card(
                      title: controller.list_sub[index]["name_sub_section"],
                      name_img:controller.list_sub[index]["name_img"] ,
                      function: ()async{
                        uplode_Data["id_sub_section"]=controller.list_search2[index]["id_sub_section"].toString();

                        if (uplode_Data['id_main_section'] == "2")
                          Get.to(() => Add_Pro_Screen_Part4(
                              titleBar: controller.list_search2[index]
                              ["name_sub_section"])

                          );
                        else if(uplode_Data["id_main_section"]=="1") {
                          if (uplode_Data["id_sub_section"] == "1")
                            Get.to(() =>
                                Add_Pro_Screen_Part3(
                                  name: controller.list_search2[index]["name_sub_section"],
                                ),
                                arguments: {
                                  "id_main": uplode_Data["id_main_section"],
                                  "id_sub": uplode_Data["id_sub_section"],
                                }
                            );
                        else if (uplode_Data["id_sub_section"] == "2")
                          Get.to(Add_Pro_Screen_Part4(titleBar:
                          controller.list_search2[index]
                          ["name_sub_section"]
                          ));

                        }
                        // Get.to(() => Add_Pro_Screen_Part3(name: 'dd',),
                        //     arguments: {
                        //       "id_main":controller.list_search2[index]["id_main_section"],
                        //     }
                        // );
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
      )
    );
  }
}
