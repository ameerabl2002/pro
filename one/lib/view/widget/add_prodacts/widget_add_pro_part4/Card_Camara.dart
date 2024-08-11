import 'package:flutter/material.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';

class Card_Camara extends StatelessWidget {
  const Card_Camara({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(

          )),
      child: Column(
        children: [
          Container(
            height: screen_height * 0.13,
            width: screen_width * 0.30,
            child: Icon(
              Icons.camera_alt_outlined,
              size: 50,
              color: my_green,
            ),
          ),
        ],
      ),
    );


  }
}
