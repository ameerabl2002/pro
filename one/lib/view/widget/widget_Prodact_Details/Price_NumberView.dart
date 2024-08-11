import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/class/statusrequt.dart';
import '../../screen/Prodact_Details.dart';


class Price_NumberView extends StatelessWidget {


  var data;

  Price_NumberView({required this.data});

  @override
  Widget build(BuildContext context) {
    return           Container(
        padding: const EdgeInsets.all(10),
        // alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      data["price_prodact"],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      data["type_money"],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.remove_red_eye,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "256",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
