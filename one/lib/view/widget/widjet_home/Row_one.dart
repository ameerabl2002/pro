
import 'package:flutter/material.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';

class Row_Stander_Home extends StatelessWidget {

  String name;
  void Function()? function;

  Row_Stander_Home({required this.name,required this.function});
  @override
  Widget build(BuildContext context) {
    return        Row(
      children: [

        Expanded(
          flex: 2,
            child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.centerRight,
                child: Text(
                  name,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: my_green2),
                ))),
        Expanded(

          child: InkWell(
            onTap: function,
            child: Container(
              margin: EdgeInsets.only(left:15 ),
              child: Row(
         mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.arrow_back_sharp, color: Colors.blue),
                  Text(
                    "الكل",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
