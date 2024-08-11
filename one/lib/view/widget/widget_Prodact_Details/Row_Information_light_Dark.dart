import 'package:flutter/material.dart';


class Row_Information_light_Dark extends StatelessWidget {

  String conest;
  var varble;
  Color color;
   var color_pro;

  Row_Information_light_Dark(this.conest, this.varble, this.color,{ this.color_pro});

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin:  EdgeInsets.symmetric(vertical: 10),
        height: 60,
        color: color,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 10),
                child: Text("$conest",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black)
                ),
              ),
            ),
            Expanded(
              child: Container(
                child:varble.runtimeType==String? Text("${varble} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black)
                ):Container(
                  height: 50,
                  alignment: Alignment.centerRight,
                 decoration: BoxDecoration(
                   color:Color(varble),
                   shape: BoxShape.circle,
                 ),

                )
              ),
            ),

          ],
        ));
  }
}
