import 'package:flutter/material.dart';
import 'package:one/view/widget/widget_profile/profile_header_options.dart';

import 'User_Data.dart';

class profile_header extends StatelessWidget {
  const profile_header({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      /// Background


      Image.asset("assets/image/profile_page_background.png"),

      /// Content
      Column(children: [
        AppBar(
          title: const Text('الملف الشخصيي '),
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,

              ),
        ),
         UserData(),
        const ProfileHeaderOptions(),
      ])
    ]);
  }
}
