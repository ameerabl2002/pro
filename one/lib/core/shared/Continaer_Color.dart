import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/Controller_Colors.dart';

class Continaer_Color extends StatelessWidget {
  const Continaer_Color({super.key});

  @override
  Widget build(BuildContext context) {
    return           GetBuilder<Controller_Colors>(
      builder: (controller) {
        return Card(
          elevation: 3,
          child: Container(
            height: 150,
            margin: EdgeInsets.all(10),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 8,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              // scrollDirection: Axis.horizontal,
              itemCount: controller.avaol.length,
              itemBuilder: (context, index) {
                final color = controller.avaol[index];
                final isSelected = controller.selectedColor[index];
                return InkWell(
                  onTap: () {
                    controller.cheng_color(index, color);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.avaol[index],
                    border: Border.all(
                      color:index==3?Colors.green:Colors.black,
                      width: 2,
                    )
                    ),
                    child: isSelected ? Container(child:index==3?Icon(Icons.check,color: Colors.white,):
                    Icon(Icons.check,)
                    ) : null,
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
