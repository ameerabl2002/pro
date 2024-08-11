import 'package:flutter/material.dart';

import '../../../core/class/statusrequt.dart';
import '../../screen/Prodact_Details.dart';


class Dirction_Prodact extends StatelessWidget {
  String dirction;


  Dirction_Prodact({required this.dirction});

  @override
  Widget build(BuildContext context) {
    return           Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("الوصف",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black)),
            Text("${dirction}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black)),
          ],
        ));
  }
}
