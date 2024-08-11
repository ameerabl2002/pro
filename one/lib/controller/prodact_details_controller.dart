import 'package:get/get.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/core/service/Myservises.dart';

class Prodact_Details_Controller extends GetxController {
  List titleData = [];
  var data;
  var list_img_all;
  var list_data_user_sale_pro;
  @override
  void onInit() {
    data = Get.arguments["data_pro"];
    select_image(data["id_prodact"].toString());
    select_data_user_sale_pro(data["user_number"]);
    changeDeatiles(data["id_main_section"], data["id_sub_section"]);
    super.onInit();
  }

  var list_deariles;

  changeDeatiles(id_main, id_sub) async {
    if (id_main == "1" && id_sub == "1") {
      await select_deatiles_car(data["id_prodact"].toString());
      titleData.addAll([
        ["الموديل", list_deariles[0]['year']],
        ["خدمة التوصيل", data['Delivery']],
        ["عدد المقاعد", list_deariles[0]['number_of_seats']],
        ["نوع القير", list_deariles[0]['movement_type']],
        ["نوع البنزين", list_deariles[0]['fuel_type']],
        ["مواصفات داخلية", list_deariles[0]['features']],
        ["اللون", list_deariles[0]['color_car']],
        ["الحالة", list_deariles[0]['state']],
        ["المواصفات", list_deariles[0]['speci']],
        ["تاريخ النشر", data['publish_date']]
      ]);
    }
  }

  StatusRequst statusRequst_select_deatiles_car = StatusRequst.loading;
  Future select_deatiles_car(String id_pro) async {
    statusRequst_select_deatiles_car=StatusRequst.loading;
    var response = await Myservises().curd.postData(LinkApi.selectDeatilesCar, {
      "id_pro": id_pro,
    });
    if (response['status'] == "success") {
      list_deariles = response["data"];
      statusRequst_select_deatiles_car=StatusRequst.success;
      // print("==============");
      print(list_deariles);
    }
    else
      statusRequst_select_deatiles_car=StatusRequst.failure;
  }

  // StatusRequst statusRequst = StatusRequst.none;

  StatusRequst statusRequst_data_user = StatusRequst.loading;
  Future select_data_user_sale_pro(val) async {
    statusRequst_data_user=StatusRequst.loading;
    update();
    var response = await Myservises().curd.postData(LinkApi.selectUser, {
      "id_user": val,
    });
    if (response["status"] == 'success') {
      list_data_user_sale_pro = response['data'];
      // print("user is ok  ${list_data_user_sale_pro}o;;;");
      statusRequst_data_user = StatusRequst.success;
    } else
      statusRequst_data_user = StatusRequst.failure;
    update();
  }

  StatusRequst statusRequst_img = StatusRequst.none;
  Future select_image(String id_pro) async {
    statusRequst_img = StatusRequst.loading;
    update();

    var response = await Myservises().curd.postData(LinkApi.selectImage, {
      "id_pro": id_pro,
    });
    if (response['status'] == "success") {
      list_img_all = response["data"];

      statusRequst_img = StatusRequst.success;
    } else
      statusRequst_img = StatusRequst.failure;
    update();
  }
}
