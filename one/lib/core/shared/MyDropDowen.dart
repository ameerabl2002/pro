import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/add_prodacts/Add_Pro_Conttroler_Part4.dart';
class MyDropDown extends StatelessWidget {



  var name_controller;
  List<String> list;
  String? selectedItem;
  String hintt;
  MyDropDown({required this.name_controller,required this.list,required this.hintt,required this.selectedItem});


  @override
  Widget build(BuildContext context) {

        return DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 16,
                  color: my_green2,
                ),
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Text(
                  hintt ,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: my_green2,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            items: list.map((String item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                textAlign:TextAlign.center,
                item,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: my_green2,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ))
                .toList(),
            value: selectedItem,
            onChanged: (String? value) {
              name_controller.checngselectedItem(value);
            },
            buttonStyleData: ButtonStyleData(
              height: 60,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: my_green,
                ),
                color: Colors.transparent,
              ),
              elevation: 5,
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.list,
              ),
              iconSize: 14,
              iconEnabledColor: my_green2,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white,
              ),
              offset: const Offset(-30, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all<double>(5),
                thumbVisibility: MaterialStateProperty.all<bool>(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.only(left: 14, right: 14),
            ),
          ),
        );


  }
}




