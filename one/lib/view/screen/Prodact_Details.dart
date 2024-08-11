import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/core/contant/My_Them.dart';
import '../../core/class/statusrequt.dart';
import '../../controller/Details_Car_Sale_Conttroller.dart';
import '../../controller/Users_Controllers.dart';
import '../../controller/prodact_details_controller.dart';
import '../widget/widget_Prodact_Details/Profile_Advertising.dart';
import '../widget/widget_Prodact_Details/Dirction_Prodact.dart';
import '../widget/widget_Prodact_Details/MyDivider.dart';
import '../widget/widget_Prodact_Details/Name_Pro.dart';
import '../widget/widget_Prodact_Details/Page_View_Img.dart';
import '../widget/widget_Prodact_Details/Price_NumberView.dart';
import '../widget/widget_Prodact_Details/Row_Information_light_Dark.dart';
import '../widget/widget_Prodact_Details/Row_Location.dart';

class Prodact_Details extends StatelessWidget {
  Prodact_Details_Controller prodact_details_controller =
      Get.put(Prodact_Details_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: GetBuilder<Prodact_Details_Controller>(
        builder: (controller) {
          return controller.statusRequst_img == StatusRequst.success
              ? ListView(
                  children: [
                    Page_View_Img(
                        data: prodact_details_controller.list_img_all),

                    Price_NumberView(data: prodact_details_controller.data),
                    Name_Pro(
                      data: prodact_details_controller.data,
                    ),
                    MyDivider(),

                    GetBuilder<Prodact_Details_Controller>(builder: (controller) {
                      return controller.statusRequst_data_user==StatusRequst.success?
                        Profile_Advertising(
                            data: prodact_details_controller.list_data_user_sale_pro)
                          :CircularProgressIndicator();
                    },
                    ),


                    MyDivider(),
                    Row_Location(
                      location: prodact_details_controller.data["location"],
                    ),
                    MyDivider(),
                    Dirction_Prodact(
                        dirction:
                            prodact_details_controller.data["dir_prodact"]),
                    MyDivider(),
                    Text("المعلومات",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black)),



                    ...List.generate(
                        prodact_details_controller.titleData.length, (index) {
                      var title =
                          prodact_details_controller.titleData[index][0];
                      var data = prodact_details_controller.titleData[index][1];
                      return Row_Information_light_Dark(
                          "${title}",
                          title != "اللون" ? data : int.parse(data),
                          index % 2 == 0
                              ? Colors.black.withOpacity(0.5)
                              : Colors.white.withOpacity(0.5));
                    }),




                  ],
                )
              : CircularProgressIndicator();
        },
      ),
    ));
  }
}
