import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/Details_Car_Sale_Conttroller.dart';
import 'package:get/get.dart';


class MyColors extends StatelessWidget {

  var name_Controller;
  String name;
  MyColors({required this.name_Controller,required this.name});

  List my_color=Colors.accents;
  // List<MaterialColor> my_color=Colors.primaries;
  @override
  Widget build(BuildContext context) {

    return  Column(

      children: [
        Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.centerRight,
          child: Text(
            "  اختر لون  $name     ",
            style: TextStyle(
                fontSize: 25,
                color: my_green2,
                fontWeight: FontWeight.bold),
          ),
        ),
        Card(
          elevation: 1,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30),

             height: screen_height*0.15,
                width: double.infinity,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6
                  ),
                  scrollDirection: Axis.vertical,
                  itemCount: my_color.length,
                  itemBuilder: (BuildContext context, int index) {
                    Color color = my_color[index];
                    return GestureDetector(
                      onTap: () {
                        name_Controller.selectedColor.value = color;
                      },
                      child:Obx(
                        () {
                          return      Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: color,
                              border: Border.all(
                                color: name_Controller.selectedColor.value == color ? Colors.black : Colors.transparent,
                                width: 1,
                              ),
                            ),
                            child: name_Controller.selectedColor.value ==color ?Icon(Icons.check):Text(""),
                          );
                        },
                      )

                    );
                  },
                ),
              ),
        ),
      ],
    );


  }
}
