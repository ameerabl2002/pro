import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/controller/home_controller.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CurvedNavigationBar(
            index: controller.currentPage,
            animationCurve: Curves.easeInExpo,
            height: 75.0,
            buttonBackgroundColor: Colors.white70,
            maxWidth: double.infinity,
            
            onTap: (index) {
              controller.changePage(index );
            },
            backgroundColor: my_green,
            items: [
              ...List.generate(controller.listPage.length , (index) {
                return 
                
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          controller.iconPage[index],
                          Text(
                            controller.namePage[index],
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      );
              }),
            ]),
        body: controller.listPage.elementAt(controller.currentPage),
      );
    });
  }
}
