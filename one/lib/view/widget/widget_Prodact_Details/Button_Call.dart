import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/contant/Colors_and_SizeScreen.dart';
import '../../../controller/Users_Controllers.dart';


class Button_Call extends StatelessWidget {

  String phone;

  Button_Call({required this.phone});

  @override
  Widget build(BuildContext context) {
    return           InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: my_green,
        ),
        // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin:  EdgeInsets.symmetric(horizontal: 5),

        height: 40,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.call,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "${phone}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
