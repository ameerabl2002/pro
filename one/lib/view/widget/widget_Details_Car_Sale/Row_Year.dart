import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/Controller_List.dart';
import 'package:one/core/shared/MyDropDowen.dart';

class Row_Year extends StatelessWidget {
 String name;
 var con;

 Row_Year({required this.name,required this.con});

  @override
  Widget build(BuildContext context) {
    return             Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.bottomCenter,
            height: 50,
            child: GetBuilder<Conttroler_Dropdowe_year>(
              builder: (controller) {
                return MyDropDown(
                  name_controller: con,
                  list: con.list,
                  hintt: "اختار العملة",
                  selectedItem: con.selectedItem,
                );
              },
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.bottomRight,
                height: 50,
                child: Text(
                  "$name",
                  style: TextStyle(fontSize: 25, color: my_green2,fontWeight: FontWeight.bold),
                )))
      ],
    );
  }
}
