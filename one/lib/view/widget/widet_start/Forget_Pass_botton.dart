
import 'package:flutter/material.dart';

class BuildForgotPasswordBtn extends StatelessWidget {

  void Function()? onpress;

  BuildForgotPasswordBtn({required this.onpress});


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: MaterialButton(

        onPressed:onpress,
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
}
