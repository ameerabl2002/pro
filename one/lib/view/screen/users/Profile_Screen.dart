import 'package:flutter/material.dart';

import '../../widget/widget_profile/box_header.dart';
import '../../widget/widget_profile/profile_header.dart';
import '../../widget/widget_profile/profile_menu_options.dart';

class Profile_page extends StatelessWidget {
  const Profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ScrollNotificationObserver(
                child: ListView(children: [
      profile_header(),
      ProfileMenuOptions(),
      Box_Header_walite(),
    ]))));
  }
}
