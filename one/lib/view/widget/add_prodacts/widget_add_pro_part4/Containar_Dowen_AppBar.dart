import 'package:flutter/material.dart';

import 'package:one/core/contant/Colors_and_SizeScreen.dart';


class Containar_Dowen_AppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: my_green,
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lightbulb, color: Colors.black),
              SizedBox(
                width: 15,
              ),
              Text(
                "ملاحظات",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            "  يمكنك اضافة 20 صورة للاعلا *",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          Text(
            "  الصور نزيد عدد المشاهدات *",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          Text(
            "يمكنك تحديد الصورة الرئسية التي ستظهر في واجهة اعلانك* ",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ],
      ),

    );
  }
}

