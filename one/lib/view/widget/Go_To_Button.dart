
import 'package:flutter/material.dart';

class Build_Go_to extends StatelessWidget {


  String tital;
  String dirc;
  void Function()? onprase;

  Build_Go_to({required this.tital,required this.dirc, required this.onprase});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onprase,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$dirc',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: "$tital",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }}