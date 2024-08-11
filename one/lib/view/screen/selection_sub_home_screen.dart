import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/view/screen/View_Pro.dart';

import '../../controller/selection_sub_home_controller.dart';
import '../../core/shared/stander_larg_card.dart';


class Selection_Sub_Home_Screen extends StatelessWidget {

  String title_app_Bar;
  Selection_Sub_home_Controller selection_sub_home_controller=Get.put(Selection_Sub_home_Controller());

  Selection_Sub_Home_Screen({required this.title_app_Bar});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: my_green,
        title:Text(title_app_Bar),
      ),

      body:
      GetBuilder<Selection_Sub_home_Controller>(builder: (controller) {
        return controller.statusReoust==StatusRequst.success?
          ListView.builder(
          itemCount:controller.list_sub_select.length,
          itemBuilder: (context, index) {

          return Stander_Larg_Card(
            title:controller.list_sub_select[index]["name_sub_section"] ,
            name_img:controller.list_sub_select[index]["name_img"] ,
            function: (){
              Get.to(()=>View_Pro(),
              arguments: {
                "id_main":controller.list_sub_select[index]["id_main_section"],
                "id_sub":controller.list_sub_select[index]["id_sub_section"],
              }
              );
            },

          );
        },
        ):CircularProgressIndicator();
      },
      ),
    );
  }
}
