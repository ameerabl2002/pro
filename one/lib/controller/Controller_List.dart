import 'package:get/get.dart';

class Conttroler_Dropdowe_Model extends GetxController{

  final List<String> list=["برادة","هيلوكس","يارس","منكا","ززز"];
  String? selectedItem;
  checngselectedItem(value)
  {
    selectedItem=value;
    update();
  }
}

class Conttroler_Dropdowe_year extends GetxController{

  final List<String> list=["2010","2011","2012","2016","2014"];
  String? selectedItem;
  checngselectedItem(value)
  {
    selectedItem=value;
    update();
  }
}
class Conttroler_Dropdowe_Specific extends GetxController {

  final List<String> list = ["كوري", "خليجي", "امريكي"];
  String? selectedItem;

  checngselectedItem(value) {
    selectedItem = value;
    update();
  }
}

  class Conttroler_Dropdown_Walks extends GetxController {

    List<String> list = ["1000-20000", "20000", "7000"];
    String? selectedItem;

    checngselectedItem(value) {
      selectedItem = value;
      update();
    }
  }
  class Conttroler_Dropdown_Location extends GetxController{

    List<String> list=["صنعاء","تعز","عدن"];
  String? selectedItem;
  checngselectedItem(value)
  {
    selectedItem=value;
    update();
  }
}