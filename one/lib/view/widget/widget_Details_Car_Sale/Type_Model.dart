import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/core/contant/My_Them.dart';
import 'package:one/controller/add_prodacts/Add_Pro_controller_Part3.dart';
import 'package:one/controller/Details_Car_Sale_Conttroller.dart';
import 'package:one/view/screen/View_Pro.dart';

import '../../../core/contant/Map_Add_Pro.dart';

class Type_Model extends StatelessWidget {
  Add_Pro_controller_Part3 add_pro_controller_part3 =
      Get.put(Add_Pro_controller_Part3());
  Details_Car_Sale_Conttroller details_car_sale_conttroller =
      Get.put(Details_Car_Sale_Conttroller());
  Add_Pro_controller_Part3 con1 = Get.put(Add_Pro_controller_Part3());

  @override
  Widget build(BuildContext context) {
    print(uplode_Data["id_main"]);
    return
      FutureBuilder(future: con1.select_section_secandary(uplode_Data['id_main'], uplode_Data['id_sub']), builder: (context, snapshot) {
        if(snapshot.hasData)
          return ListView.builder(
            padding: EdgeInsets.all(15),
            itemCount: add_pro_controller_part3.list_secandary.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () async {
                  await details_car_sale_conttroller.select_Car_Where_Marka(
                      add_pro_controller_part3.list_secandary[index]
                      ['id_secondary_section']
                          .toString());
                  Get.to(() => View_Pro());
                },
                child: Card(
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: ClipPath.shape(
                              shape: CircleBorder(),
                              child: Image.network(
                                "${my_http}/ddd/${add_pro_controller_part3.list_secandary[index]["name_img"]}",
                                fit: BoxFit.fill,
                              )),
                        ),

                        Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                  add_pro_controller_part3.list_secandary[index]
                                  ["name_secondary_section"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: my_green2,
                                      fontSize: 20)),
                            )),

                        Expanded(
                            child: Container(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.grey,
                                ))),
                      ],
                    ),
                  ),
                ),
              );
            },
          );

        return Container();
      }
      );
  }
}
