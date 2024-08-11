// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../core/contant/Colors_and_SizeScreen.dart';
// import '../../screen/add_prodacts/Add_Pro_Screen_Part1.dart';

// class NavigationBar_Home extends StatelessWidget {
//   const NavigationBar_Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CurvedNavigationBar(
      
//         index: 2,
//         animationCurve: Curves.easeInExpo,
//         height: 60,
//         buttonBackgroundColor: Colors.white70,
//         maxWidth: double.infinity,
//         onTap: (index){
//           if(index==1)
//             Get.to(()=>Add_Pro_Screen_Part1());

//         },
//         backgroundColor: my_green, 
//         items: [
//       Icon(Icons.home),
//       Icon(Icons.camera_alt_outlined),
//       Icon(Icons.settings),
//     ]
//     );
//   }
// }
