

import 'package:flutter/material.dart';

class BuildLoginBtn extends StatelessWidget {

  String name;
  Future Function()? onprase;

  BuildLoginBtn({required this.name,required this.onprase});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: MaterialButton(
        elevation: 5.0,
        onPressed: onprase,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          '$name',
          style: TextStyle(
            color: Colors.green.shade900,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
}