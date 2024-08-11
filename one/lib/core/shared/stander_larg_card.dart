import 'package:flutter/material.dart';

import '../contant/Colors_and_SizeScreen.dart';
import '../contant/My_Them.dart';


class Stander_Larg_Card extends StatelessWidget {

  void Function()? function;
  String title;
  String name_img;

  Stander_Larg_Card({required this.function,required this.title,required this.name_img});

  @override
  Widget build(BuildContext context) {
    return                  InkWell(
      onTap:function,
      child: Card(
        margin: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
        ),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          // side: BorderSide(color: Colors.lightGreen)
        ),
        child: Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                    height: screen_height * 0.10,
                    margin: EdgeInsets.all(5),
                    child: ClipPath.shape(
                        shape: CircleBorder(),
                        child: Image.network(
                          "${my_http}/ddd/${name_img}",
                          fit: BoxFit.cover,
                        ))),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "${title}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_circle_right_sharp,
                      size: 50,
                      color: my_green2,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
