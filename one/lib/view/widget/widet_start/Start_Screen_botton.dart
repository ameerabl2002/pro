import 'package:flutter/material.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';

class Start_Button extends StatelessWidget {
  String tital;
  void Function()? onpress;

  Start_Button({required this.tital,required this.onpress});

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 70.0,
            offset: Offset(8, 3),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(vertical:10.0),
      width: 340,
      child: MaterialButton(
        elevation: 5.0,
        onPressed: onpress,
        padding: EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color.fromARGB(255, 236, 240, 245),
        child: Text(
          '$tital',
          style: TextStyle(
            color: my_green2,
            letterSpacing: 1.5,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
}




