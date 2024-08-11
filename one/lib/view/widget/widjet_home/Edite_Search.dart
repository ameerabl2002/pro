import 'package:flutter/material.dart';

import '../../../core/contant/Colors_and_SizeScreen.dart';


class Edite_Search extends StatelessWidget {
  const Edite_Search({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.only(top: 90,left: 20,right: 20),
        child: Card(
          elevation: 8,
          // shadowColor: Colors.lightGreenAccent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color:my_green)
          ),
          child:  TextFormField(
            onChanged: (value) {
            },
            decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                border: UnderlineInputBorder(
                ),
                icon: Icon(Icons.search_rounded,size: 30,),
                hintText: "البحث عن القسم الذي تريدة",
                contentPadding: EdgeInsets.only(left: 80)
            ),
          ),

        ),
      );
  }
}
