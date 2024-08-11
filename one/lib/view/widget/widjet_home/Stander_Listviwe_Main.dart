import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/controller/Controller_Home.dart';
import 'package:one/data/model/section_main.dart';
import 'package:one/view/screen/selection_sub_home_screen.dart';

import '../../../core/shared/Card_Smoll_Stander.dart';
import '../../../core/class/statusrequt.dart';

class Stander_Listviwe_Main extends StatelessWidget {
  Controller_Home controller_home = Get.put(Controller_Home());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: GetBuilder<Controller_Home>(
        builder: (controller) {
          return controller.statusReoust_select_selection_main == StatusRequst.success
              ? ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller_home.list_main_home.length,
                  itemBuilder: (context, index) {
                    print(controller_home.list_main_home[index]["name_main_section"]);
                    return Card_Smoll_Stander(

                      sectionMain: SectionMain.fromJson(controller_home.list_main_home[index]),
                      function: () {
                        Get.to(() => Selection_Sub_Home_Screen(

                              title_app_Bar: controller_home
                                  .list_main_home[index]["name_main_section"],
                            ),
                          arguments: {
                          "id":controller_home
                              .list_main_home[index]["id_main_section"],
                          }
                        );
                      },
                    );
                  },
                )
              : CircularProgressIndicator();
        },
      ),
    );
  }
}
