import 'package:flutter/material.dart';
import 'package:one/core/contant/My_Them.dart';
import 'package:one/data/model/section_main.dart';

import '../contant/Colors_and_SizeScreen.dart';

class Card_Smoll_Stander extends StatelessWidget {
  void Function()? function;
  //  String name_title;
  //  String name_img;
  SectionMain sectionMain;

  Card_Smoll_Stander(
      {required this.function,
      // required this.name_title,
      // required this.name_img
      required this.sectionMain
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: InkWell(
          onTap: function,
          child: Card(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: ClipPath.shape(
                        shape: CircleBorder(),
                        child: Image.network(
                          "${my_http}/ddd/${sectionMain.nameImg}",
                          fit: BoxFit.cover,
                        )
                        // child: Image.network(
                        //   "${my_http}/ddd/${controller_home.list_main_home[index]["name_img"]}",
                        //   fit: BoxFit.cover,
                        // ),
                        ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        "${sectionMain.nameMainSection}",
                        style: TextStyle(
                          color: my_green2,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
