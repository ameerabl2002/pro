class LinkApi {
  static const String server = "http://10.0.2.2/asame8php/";
  // static const String server = "http://192.168.201.65/asame8php/";
// select admain
  static const String selectMainSection = "${server}admain/select.php?mark=select_section_main";
  static const String selectSub = "${server}admain/select.php?mark=select_sub";
  static const String selectSecandary = "${server}admain/select.php?mark=select_secandary";
// insert admain
  static const String insertSectionMain = "${server}admain/insert.php?mark=insert_section_main";
  static const String insertSectionSub = "${server}admain/insert.php?mark=insert_section_sub";
  static const String insertSectionSecandary = "${server}admain/insert.php?mark=insert_section_secandary";

// select prodact
  static const String selectProdact = "${server}prodact/select.php?mark=select_prodact";
  static const String selectCarWhereMarka = "${server}prodact/select.php?mark=select_Car_Where_Marka";
  static const String selectImage = "${server}prodact/select.php?mark=select_image";
  static const String selectDeatilesCar = "${server}prodact/select.php?mark=select_deatiles_car";
  static const String selectProWhereViewNumber = "${server}prodact/select.php?mark=select_pro_where_view_number";
  static const String selectProCar = "${server}prodact/select.php?mark=select_pro_car";
  static const String selectCarWhereYear = "${server}prodact/select.php?mark=select_Car_Where_Year";

//insert prodact
  static const String insertProStander = "${server}prodact/insert.php?mark=add_pro_stander";
  static const String insertProClothes = "${server}prodact/insert.php?mark=add_pro_clothes";
  static const String insertProdactCarSale = "${server}prodact/insert.php?mark=insert_prodact_car_sale";
  static const String insertComputer = "${server}prodact/insert.php?mark=insert_Computer";



  static const String addImages = "${server}addImages.php";

//select user
static const String selectUser = "${server}users/select.php?mark=select_user";

//update user
  static const String update_user = "${server}users/update.php?mark=update_user";

// static const String selectUser = "${server}users/select.php?mark=select_user";
// 




// insert user
  static const String insertUser = "${server}users/insert.php?mark=insert_user";



}
