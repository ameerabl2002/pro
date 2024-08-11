import 'package:flutter/material.dart';

import '../../../../core/contant/Colors_and_SizeScreen.dart';

class Card_Secandary extends StatelessWidget {
 String  nameText;
 String nameImg;
 void Function()? function;

 Card_Secandary({required this.nameText,required this.nameImg, this.function});

 @override
  Widget build(BuildContext context) {
    return
      Card(
          elevation: 10,
          shadowColor: my_green,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: my_green2)),
          child: InkWell(
            onTap:function,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child:ClipPath.shape(shape: CircleBorder(),
                      child: Image.network(
                        nameImg,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                    nameText,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),


              ],
            ),
          )
      );
  }
}
