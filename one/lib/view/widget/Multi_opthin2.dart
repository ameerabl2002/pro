import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:flutter/material.dart';

import '../../core/contant/Colors_and_SizeScreen.dart';


class Multi_option2 extends StatelessWidget {

  List<String> list;
  var name_con;
  Multi_option2({required this.list, this.name_con});

  GroupController chipsController = GroupController(isMultipleSelection:true,  );
  @override
  Widget build(BuildContext context) {

    return SimpleGroupedChips<String>(

      controller: chipsController,
      values: list,
      itemsTitle:list,
      // List.generate(7, (index) => "chip_text_$index"),
      chipGroupStyle: ChipGroupStyle.minimize(
        isScrolling: true,
        backgroundColorItem: Colors.white,
        selectedTextColor: Colors.white,
        selectedColorItem: my_green,
        itemTitleStyle: TextStyle(
          fontSize: 25,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: Colors.black
          )
        ),
        checkedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
        selectedIcon: Icons.check,
        direction: ChipsDirection.horizontal,
      ),

      onItemSelected: ( values) {

        name_con.addVal(values);
      },
    );
  }
}
