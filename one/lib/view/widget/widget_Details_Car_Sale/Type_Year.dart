import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/Controller_List.dart';
import 'package:one/controller/Details_Car_Sale_Conttroller.dart';


class Type_Year extends StatelessWidget {
  Conttroler_Dropdowe_year conttroler_dropdowe_year =Get.put(Conttroler_Dropdowe_year());

  Details_Car_Sale_Conttroller details_car_sale_conttroller=Get.put(Details_Car_Sale_Conttroller());
  @override
  Widget build(BuildContext context) {
    return ListView.builder(reverse: true,itemCount: conttroler_dropdowe_year.list.length,
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return
          InkWell(
            onTap: ()async{
             await details_car_sale_conttroller.select_Car_Where_Year(conttroler_dropdowe_year.list[index]);
            },
            child: Card(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: screen_height*0.08,
                child: Row(
                  children: [
                    Expanded(child: Container(child: Icon(Icons.arrow_back,color: Colors.grey,size: 30,))),
                    Expanded(
                      child: Container(
                        child: Text(conttroler_dropdowe_year.list[index],style: TextStyle(fontWeight: FontWeight.bold,color: my_green2,fontSize: 25)),),
                    )
                  ],
                ),
              ),
            ),
          );
      },) ;
  }
}
