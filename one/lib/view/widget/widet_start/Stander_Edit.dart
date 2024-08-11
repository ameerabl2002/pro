
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/controller/Add_User_Controller.dart';

class Stander_Edite_Text extends StatelessWidget {
  String hint;
  IconData iconData;
  String title;

  TextEditingController con;
  Stander_Edite_Text({required this.hint,required this.iconData,required this.title,required this.con});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$title',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60.0,
          child: Stack(
            children: [
              TextFormField(

                controller: con,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.black45,
                  fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,

                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(iconData,
                    color: Colors.green.shade300,
                  ),
                  hintText: '$hint',
                  hintStyle: TextStyle(
                    color: Colors.black45,
                    fontFamily: 'OpenSans',
                  ),

                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}


