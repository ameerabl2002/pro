import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/Local_Controller.dart';

class MyLocal extends StatelessWidget {
   MyLocal({super.key});

  Local_Controller controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(

          height: Get.height,
          padding: EdgeInsets.all(15),
          width: Get.width,
        // alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(

            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Text("1".tr,
                    style: TextStyle(color: Colors.red,fontSize: 30),
                    
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    controller.chang_lang("ar");

                  },
                  child: Text(
                    "3".tr,style: TextStyle(color: Colors.red,fontSize: 30),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    controller.chang_lang("en");
                  },
                  child: Text("2".tr,
                   style: TextStyle(color: Colors.red,fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
