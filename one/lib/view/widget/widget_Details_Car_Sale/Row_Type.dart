import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/add_prodacts/Add_Pro_Conttroler_Part4.dart';
import 'package:one/controller/Details_Car_Sale_Conttroller.dart';

import 'Card_Button.dart';







class Row_Type extends StatelessWidget {
  // const Row_Type({super.key});
  Details_Car_Sale_Conttroller con4=Get.put(Details_Car_Sale_Conttroller());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      GetBuilder<Details_Car_Sale_Conttroller>(builder: (controller) {
        return Card_Button(name: "عادي",iconData: con4.ade_icon,onTap: con4.cheng_icon_ade,);

      },), GetBuilder<Details_Car_Sale_Conttroller>(builder: (controller) {
        return Card_Button(name: "اوتاماتيك",iconData: con4.otomatic_icon,onTap: con4.cheng_icon_otomatic,);

      },),
        // Card_Button(),
                Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.all(10),
            child: Text(
              "نوع ناقل الحركة",
              style: TextStyle(
                fontSize: 20,
                color: my_green2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
                )
      ],
    );
  }
}




// class Row_Type extends StatelessWidget {
//   // const Row_Type({super.key});
//   Add_Pro_Conttroler_Part4 con4=Get.put(Add_Pro_Conttroler_Part4());
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: InkWell(
//             onTap: () {
//               con4.cheng_icon_ade();
//             },
//             child: Card(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10)),
//               elevation: 5,
//               child: Container(
//                 width: 60,
//                 height: 60,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "عادي",
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: my_green2,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     GetBuilder<Add_Pro_Conttroler_Part4>(
//                       builder: (controller) {
//                         return Icon(con4.ade_icon);
//                       },
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           child: InkWell(
//             onTap: () {
//               con4.cheng_icon_otomatic();
//             },
//             child: Card(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10)),
//               elevation: 5,
//               child: Container(
//                 width: 60,
//                 height: 60,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "اوتاماتيك",
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: my_green2,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     GetBuilder<Add_Pro_Conttroler_Part4>(
//                       builder: (controller) {
//                         return Icon(con4.otomatic_icon);
//                       },
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 2,
//           child: Container(
//             alignment: Alignment.centerRight,
//             margin: EdgeInsets.all(10),
//             child: Text(
//               "نوع ناقل الحركة",
//               style: TextStyle(
//                 fontSize: 20,
//                 color: my_green2,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
