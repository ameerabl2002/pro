import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:one/view/widget/widget_Prodact_Details/Button_Call.dart';
import 'package:one/view/widget/widget_Prodact_Details/Button_Message.dart';

import '../../../core/contant/Colors_and_SizeScreen.dart';
import '../../../core/contant/My_Them.dart';
import '../../../controller/Users_Controllers.dart';

import 'package:get/get.dart';

import '../../../controller/prodact_details_controller.dart';

class Profile_Advertising extends StatelessWidget {
  var data;

  Profile_Advertising({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    "صاحب الاعلان",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: 9),
                    width: 180,
                    child: RatingBar(
                      ratingWidget: RatingWidget(
                          full: Icon(
                            Icons.star,
                            color: Colors.yellow.shade400,
                          ),
                          half: Directionality(
                              child: Icon(Icons.star_half_outlined,
                                  color: Colors.yellow.shade400),
                              textDirection: TextDirection.ltr),
                          empty: Icon(
                            Icons.star_outline,
                            color: my_white,
                          )),
                      onRatingUpdate: (value) => Icon(Icons.star_outline),
                      ignoreGestures: false,
                      itemSize: 35,
                      allowHalfRating: true,
                      initialRating: 2,
                    ),
                    decoration: BoxDecoration(
                      color: my_green.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                    )),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  alignment: Alignment.topLeft,
                  fit: StackFit.passthrough,
                  children: [
                    Container(
                      height: 100,
                      // color: Colors.blue,
                      child: ClipPath.shape(
                        shape: CircleBorder(),
                        child: Image.network(
                          "${LinkApi.server}${data[0]['name_img']}",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 80),
                        child: Icon(
                          Icons.add_circle_outline_rounded,
                          size: 30,
                          color: my_green,
                        )),
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${data[0]['name_user']}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Button_Call(
                              phone: data[0]["phone_user"],
                            )),
                            Expanded(child: Button_Message()),
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
