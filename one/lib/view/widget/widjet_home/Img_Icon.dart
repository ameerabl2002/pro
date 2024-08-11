import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/view/screen/Login_screen.dart';

import '../../../core/contant/Colors_and_SizeScreen.dart';
import '../../../core/contant/My_Them.dart';
import '../../../controller/Controller_Home.dart';
import '../../../controller/Users_Controllers.dart';
import '../../screen/users/Profile_Screen.dart';

class Img_Icon extends StatelessWidget {
  Controller_Home controller_home = Get.find();

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          color: my_green,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          )),
      height: 120,
      child: GetBuilder<Controller_Home>(builder: (controller) {
        return controller.statusReoust_select_user == StatusRequst.loading
            ? CircularProgressIndicator()
            : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                    height: 70,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: InkWell(
                      onTap: () {
                        Get.to(()=> Profile_page());
                      },
                      child: ClipPath.shape(
                        shape: CircleBorder(),
                        child: Image.network(
                          "${LinkApi.server}${controller.list_user_data_home["name_img"]} ",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                      //   },
                      // )
                      ),
                  Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "الملف الشخصي",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          Text(
                            " ${controller_home.list_user_data_home['name_user']}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 2,
                      child: Container(
                          height: 80,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.share,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.notification_important,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ))),
                ],
              );
      }),
    );
  }
}
