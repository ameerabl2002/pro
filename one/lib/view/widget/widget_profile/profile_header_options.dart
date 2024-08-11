import 'package:flutter/material.dart';
import 'package:one/view/widget/widget_profile/profile_squre_tile.dart';

import 'app_defaults.dart';
import 'app_icons.dart';

class ProfileHeaderOptions extends StatelessWidget {
  const ProfileHeaderOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 120,
        width: 350,
        margin: const EdgeInsets.all(AppDefaults.margin),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppDefaults.borderRadius,
          boxShadow: AppDefaults.boxShadow,
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProfileSqureTile(
            item: '32',
                label: ' اتابع',

                onTap: () {},
              ),

              ProfileSqureTile(
                label: 'المتابعون',
              item: ' 265',

    onTap: () {},
              ),
              ProfileSqureTile(
                label: 'الاعلانات',
                item: '30 ',
                onTap: () {},
              ),
            ],
          ),
        ]));
  }
}
