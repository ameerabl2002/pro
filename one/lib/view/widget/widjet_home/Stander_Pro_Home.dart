import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/controller/Controller_Home.dart';
import 'package:one/controller/Users_Controllers.dart';
import 'package:one/core/contant/linkapi.dart';

import '../../../core/contant/Colors_and_SizeScreen.dart';
import '../../../core/contant/My_Them.dart';
import '../../../core/class/statusrequt.dart';
import '../../screen/Prodact_Details.dart';

class Stander_Pro_Home extends StatelessWidget {
  List list_pro;
  Controller_Home controller_home = Get.put(Controller_Home());

  Stander_Pro_Home({required this.list_pro});
// Select_Pro_Controller select_pro_controller=Get.put(Select_Pro_Controller());
  Users_Controllers users_controllers = Get.put(Users_Controllers());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // color: Colors.red,
      child: ListView.builder(
        itemExtent: 200,

        itemCount: list_pro.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index < 4)
            return Stack(
              alignment: Alignment.topLeft,
              children: [
                InkWell(
                    onTap: () async {
                      print(controller_home.list_pro_view_number[index]);
                      Get.to(() => Prodact_Details()
                ,
                arguments: {
                  "data_pro":controller_home.list_pro_view_number[index],
                }
                      );

                    },
                    child: Card(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Container(
                        width: 200,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                width: 200,
                                child: Card(
                                    color: Colors.transparent,
                                    elevation: 6,
                                    child: ClipPath.shape(
                                      shape: BeveledRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Image.network(
                                        "${LinkApi.server}${list_pro[index]["img_primary"]}",
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  list_pro[index]["name_prodact"],
                                  style: TextStyle(
                                    color: my_green2,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "${list_pro[index]['price_prodact']}\$",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: my_green, width: 1)),
                                      child: InkWell(
                                        onTap: () async {
                                          // await select_pro_controller.select_image(list_pro[index]['id_prodact'].toString());
                                          // pro = list_pro[index];
                                          // await users_controllers.select_data_user_sale_pro(pro['user_number'].toString());
                                          //
                                          // if (list_pro[index]['id_sub_section'] == '1') {
                                          //   await select_pro_controller.select_deatiles_car(
                                          //       list_pro[index]['id_prodact'].toString());
                                          //   Get.to(() => Prodact_Details());
                                          // } else {
                                          //   select_pro_controller.data_deatiles_car = null;
                                          //   Get.to(() => Prodact_Details());
                                          // }
                                        },
                                        child: Text(
                                          "التفاصيل",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Icon(
                      Icons.favorite_outline_outlined,
                      size: 30,
                      color: Colors.red,
                    ))
              ],
            );
        },
      ),
    );
  }
}
