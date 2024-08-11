import 'package:get/get.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/core/service/Myservises.dart';

class Add_Pro_controller_Part1 extends GetxController {
  StatusRequst statusRequst = StatusRequst.none;

  @override
  void onInit() {
    select_selection_main();
    super.onInit();
  }

  int mod = 0;
  List list_search1 = [];
  List list_main = [];

  search_Main(String name) {
    if (name.isEmpty) {
      list_search1 = list_main;
    } else {
      list_search1 = list_main
          .where((element) => element["name_main_section"]
              .toLowerCase()
              .contains(name.toLowerCase()))
          .toList();
    }
    update();
  }

  select_selection_main() async {
    statusRequst = StatusRequst.loading;
    update();

    var response =
        await Myservises().curd.postData(LinkApi.selectMainSection, {});

    if (response['status'] == "success") {
      list_main = response["data"];
      list_search1 = list_main;
      print(list_main);
      statusRequst = StatusRequst.success;
    } else {
      statusRequst = StatusRequst.failure;
    }

    update();
  }
}
