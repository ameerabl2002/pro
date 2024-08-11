
import 'package:get/get.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/core/service/Myservises.dart';


class View_Pro_Controller extends GetxController {
  @override
  void onInit() {
    var data = Get.arguments;
    select_pro(data["id_main"], data["id_sub"]);

    super.onInit();
  }

  StatusRequst statusReoust = StatusRequst.none;
  var list_pro;
  Future select_pro(number_section_main, number_section_sub) async {
    statusReoust = StatusRequst.loading;
    update();

    var response = await Myservises().curd.postData(LinkApi.selectProdact, {
      "id_main_section": number_section_main.toString(),
      "id_sub_section": number_section_sub.toString(),
    });

    if (response['status'] == "success") {
      list_pro = response["data"];
      print(list_pro);
      statusReoust = StatusRequst.success;
    } else {
      statusReoust = StatusRequst.failure;
    }

    update();
  }
}
