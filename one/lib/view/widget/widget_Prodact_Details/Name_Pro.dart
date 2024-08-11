import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/class/statusrequt.dart';
import '../../screen/Prodact_Details.dart';


class Name_Pro extends StatelessWidget {

  var data;

  Name_Pro({required this.data});

  @override
  Widget build(BuildContext context) {
    return           Container(
      margin: EdgeInsets.only(right: 10),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
             "اسم الاعلان",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black),
            ),
            Text(
              data["name_prodact"],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ));
  }
}
