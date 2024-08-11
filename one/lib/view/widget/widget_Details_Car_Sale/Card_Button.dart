import 'package:flutter/material.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
class Card_Button extends StatelessWidget {

  String name;
  IconData iconData;
  Function()? onTap;


  Card_Button({required this.name,required this.iconData,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap:onTap,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          child: Container(
            width: screen_width*0.25,
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$name",
                  style: TextStyle(
                    fontSize: 15,
                    color: my_green2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Icon(iconData),

              ],
            ),
          ),
        ),

      );
  }
}
