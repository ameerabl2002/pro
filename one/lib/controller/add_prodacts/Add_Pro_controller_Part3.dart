
import 'package:get/get.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/core/service/Myservises.dart';



class Add_Pro_controller_Part3 extends GetxController {

@override
  void onInit() {

  var data=Get.arguments;
print(data);
  select_section_secandary(data["id_main"], data["id_sub"]);


  }

  List list_search3 = [];
  List list_secandary = [];
  StatusRequst statusRequst = StatusRequst.none;

  Future select_section_secandary(
      number_section_main, number_section_sub) async {
    statusRequst = StatusRequst.loading;
    update();
var response = await Myservises().curd.postData(LinkApi.selectSecandary, {
"id_main_section": number_section_main.toString(),
      "id_sub_section": number_section_sub.toString(),   
       });

    if (response['status'] == "success") {
      list_secandary = response["data"];
     list_search3 = list_secandary;
     print(list_secandary);

      statusRequst = StatusRequst.success;
    } else {
      statusRequst = StatusRequst.failure;
    }
    
    update();

  }
}
