import 'package:flutter/material.dart';

import '../../../core/contant/Colors_and_SizeScreen.dart';
import '../../../core/class/statusrequt.dart';
import '../../screen/Prodact_Details.dart';

  class Row_Location extends StatelessWidget {

    var location;

    Row_Location({required this.location});

    @override
  Widget build(BuildContext context) {
    return           Row(
      children: [
        const SizedBox(
          width: 5,
        ),
        const Expanded(
            flex: 1,
            child: Icon(
              Icons.location_on_rounded,
              color: Colors.black,
              size: 30,
            )),
        const SizedBox(
          width: 15,
        ),
        Expanded(
            flex: 2,
            child: Text(
              "${location}",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black),
            )),
        Expanded(
          flex: 3,
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: my_green,
              ),
              color: Colors.transparent,
            ),
            child: const Text(
              "اسال عن الموقغ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
