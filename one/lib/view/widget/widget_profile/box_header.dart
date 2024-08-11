import 'package:flutter/material.dart';
import 'package:one/view/widget/widget_profile/profile_squre_tile.dart';

import 'app_defaults.dart';
import 'app_icons.dart';

class Box_Header_walite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 240,
      margin: const EdgeInsets.all(AppDefaults.padding),
      padding: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: AppDefaults.borderRadius,
        boxShadow: AppDefaults.boxShadow,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              child: Text(
            'My Walet',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 241, 246, 243),
                    borderRadius: AppDefaults.borderRadius,
                    boxShadow: AppDefaults.boxShadow,
                  ),
                  child: Column(children: [
                    Text(
                      "  \$ 3000 ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "  My money ",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ])),
              Container(
                  margin: EdgeInsets.only(left: 0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 241, 246, 243),
                    borderRadius: AppDefaults.borderRadius,
                    boxShadow: AppDefaults.boxShadow,
                  ),
                  child: Column(children: [
                    Text(
                      "  20 ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "  adware  count ",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ])),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     ProfileSqureTile(
          //       label: 'Add money',
          //       icon: AppIcons.addQuantity,
          //       onTap: () {},
          //     ),
          //     ProfileSqureTile(
          //       label: 'my activity',
          //       icon: AppIcons.profilePayment,
          //       onTap: () {},
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
