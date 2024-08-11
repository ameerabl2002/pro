import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/Controller_Home.dart';
import 'package:one/controller/Details_Car_Sale_Conttroller.dart';
import 'package:one/controller/Users_Controllers.dart';
import 'package:one/controller/view_pro_controller.dart';
import 'package:one/core/contant/linkapi.dart';
import '../../core/contant/My_Them.dart';
import '../../core/class/statusrequt.dart';
import 'Prodact_Details.dart';

class View_Pro extends StatelessWidget {
  View_Pro_Controller view_pro_controller = Get.put(View_Pro_Controller());

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ffffff"),
      ),
      body: Container(
        child: GetBuilder<View_Pro_Controller>(
          builder: (controller) {
            return controller.statusReoust == StatusRequst.success
                ? ListView.builder(
                    itemCount: view_pro_controller.list_pro.length,
                    itemBuilder: (context, index) {

                      return InkWell(
                        onTap: () async {
                          // print(select_pro_controller.list_pro);

                          Get.to(() => Prodact_Details(), arguments: {
                            "data_pro": view_pro_controller.list_pro[index],
                          });
                        },
                        child: Card(
                          elevation: 2,
                          child: Container(
                            margin: EdgeInsets.all(10),

                            // color: Colors.green,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: 140,
                                        child: Card(
                                            color: Colors.transparent,
                                            margin: EdgeInsets.all(10),
                                            elevation: 6,
                                            child: ClipPath.shape(
                                              shape: BeveledRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Image.network(
                                                "${LinkApi.server}${view_pro_controller.list_pro[index]['img_primary']} ",
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              view_pro_controller.list_pro[index]
                                                  ['name_prodact'],
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(view_pro_controller
                                                .list_pro[index]['dir_prodact']),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  view_pro_controller
                                                          .list_pro[index]
                                                      ['price_prodact'],
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.red),
                                                ),
                                                Text(
                                                    view_pro_controller
                                                            .list_pro[index]
                                                        ['type_money'],
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.red),
                                                    textAlign: TextAlign.start),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  height: 25,
                                  width: 50,
                                  color: Colors.black.withOpacity(0.5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "12",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.photo,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.blue,
                                        ),
                                        alignment: Alignment.center,
                                        height: 50,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                              Icons.call,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "737392933",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          color: Colors.transparent,
                                        ),
                                        alignment: Alignment.center,
                                        height: 50,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "دردشة",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.blue),
                                            ),
                                            Icon(
                                              Icons.message,
                                              color: Colors.blue,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: Container(
                                      height: 60,
                                      child: Card(
                                        child: Icon(
                                          Icons.favorite_outline_outlined,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ):  CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
