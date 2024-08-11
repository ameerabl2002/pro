import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/contant/Colors_and_SizeScreen.dart';


class Button_Message extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return                    InkWell(
      onTap: (){},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: my_green,
          ),
          color: Colors.transparent,
        ),
        alignment: Alignment.center,
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "دردشة",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: my_green),
            ),
            Icon(
              Icons.message,
              color: my_green,
            )
          ],
        ),
      ),
    );
  }
}
