import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/controller/Details_Car_Sale_Conttroller.dart';

class Colum_Details_inCar extends StatelessWidget {
  Details_Car_Sale_Conttroller con = Get.put(Details_Car_Sale_Conttroller());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.centerRight,
              child: const Text(
                "مواصفات داخلية",
                style: TextStyle(
                    fontSize: 25,
                    color: my_green2,
                    fontWeight: FontWeight.bold),
              )),
          Card(
            elevation: 0,
            child: Container(
              height: screen_height * 0.25,
              width: double.infinity,
              child: GridView.builder(

                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: con.list_check_box.length,
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 1.5,
                  crossAxisSpacing: 0,
                  childAspectRatio: 2
                ),
                itemBuilder: (context, index) {
                  return GetBuilder<Details_Car_Sale_Conttroller>(
                    builder: (controller) {
                      return Column(
                        children: [
                          Container(
                            height: 40,
                            child: ListTile(
                              // contentPadding: EdgeInsets.all(0),
                              leading: Container(
                                child: Checkbox(
                                  value: con.list_check_box[index].value,
                                  onChanged: (value) {
                                    con.select_item_checkbox(index);
                                  },
                                ),
                              ),
                              title: Container(
                                  height: 20,
                                  child: Text(con.list_check_box[index].title)),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
