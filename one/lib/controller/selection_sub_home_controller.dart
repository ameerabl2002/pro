import 'package:get/get.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/core/service/Myservises.dart';

import '../core/class/statusrequt.dart';

class Selection_Sub_home_Controller extends GetxController {
  @override
  void onInit() {
    var data = Get.arguments;
    select_section_sub(data["id"]);
    super.onInit();
  }

  StatusRequst statusReoust = StatusRequst.none;
  var list_sub_select;
  Future select_section_sub(id_main_section) async {
    statusReoust = StatusRequst.loading;
    update();

    var response = await Myservises().curd.postData(LinkApi.selectSub, {
      "id_main_section": id_main_section.toString(),
    });

    if (response["status"] == 'success') {
      list_sub_select = response['data'];
      print("list_sub ok");
      print(list_sub_select);
      statusReoust = StatusRequst.success;
    } else{   
         statusReoust = StatusRequst.failure;
}   
 update();
  }
}
