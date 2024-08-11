
import 'package:get/get.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/core/service/Myservises.dart';

class Add_Pro_controller_Part2 extends GetxController {
  List list_search2 = [];
    List list_sub = [];

    @override
  void onInit() {
      var data=Get.arguments;
    select_section_sub(data["id_main"]);

  }

    StatusRequst statusRequst=StatusRequst.none;
  search_Sub(String name) {
    if (name.isEmpty) {
      list_search2 = list_sub;
    } else {
      list_search2 = list_sub
          .where((element) => element["name_sub_section"]
          .toLowerCase()
          .contains(name.toLowerCase()))
          .toList();
    }
    update();
  }

  Future select_section_sub(number_section_main) async {
    statusRequst=StatusRequst.loading;
    update();
    list_sub.clear();
    list_search2.clear();
    var response = await Myservises().curd.postData(LinkApi.selectSub, {
"id_main_section": number_section_main.toString(),
       });
    
    if (response['status'] == "success") {
      list_sub = response["data"];
     list_search2 = list_sub;

      statusRequst = StatusRequst.success;
    } else {
      statusRequst = StatusRequst.failure;
    }
    
   

update();
  }











}