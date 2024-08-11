import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:one/controller/Users_Controllers.dart';
import 'package:one/controller/home_controller.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/core/shared/ButStander.dart';
import 'package:one/view/screen/home.dart';

import '../../../controller/update_data_user_controller.dart';
import '../../widget/widet_start/Stander_Edit.dart';


class Update_Data_User extends StatelessWidget {

  Update_Data_User_Controller con=Get.put(Update_Data_User_Controller());
  File x=File("");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("البيانات الشخصية"),
          elevation: 0,
          backgroundColor: my_green,
        ),
        body:Container(

          child: GetBuilder<Update_Data_User_Controller>(builder: (controller) {
            return controller.statusReoust_select_user==StatusRequst.success?
            Column(
              children: [

                InkWell(
                  onTap: ()async {
                   controller.updata_img_user = await ImagePicker().pickImage(source: ImageSource.gallery);
                   controller.chang(controller.updata_img_user.path);
                    print(controller.updata_img_user.path);
                    // HomeController h=Get.put(HomeController());
                  },
                  child: Container(
                    height: 200,
                    child: Center(
                        child: ClipPath.shape(
                            shape: CircleBorder(),
                            child:
                            controller.updata_img_user!=null?
                                Image.file(controller.file):
                            Image.network(
                         "${LinkApi.server}${controller.list_user_updata["name_img"]}"
                            ),
                        )
                    ),
                  ),
                ),

                Container(
                    height: 100,
                    child: Stander_Edite_Text(title:"",con:controller.name_user,hint:  controller.list_user_updata["name_user"],iconData: Icons.person, )),
                Container(
                    height: 150,
                    child: Stander_Edite_Text(title:"",con:controller.phone_user,hint:  controller.list_user_updata["phone_user"],iconData: Icons.person, )),
                
                Container(

                  child: ButStander(color: Colors.white, color_border: my_green, height:70, horizontal: 40, fontsize: 30,title: "تعديل" ,function: () {
controller.update_data_user();
HomeController user=Get.put(HomeController());
Get.to(()=>Home());

                  },),
                )
              ],
            ):CircularProgressIndicator();
          },
          ),
        ),


    );
  }
}
