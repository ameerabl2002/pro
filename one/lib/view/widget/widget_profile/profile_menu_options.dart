import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one/view/screen/Login_screen.dart';
import 'package:one/core/function/My_AlertDiloge.dart';
import 'package:one/view/screen/users/update_data_user.dart';



import '../../screen/users/Profile_Screen.dart';
import 'app_defaults.dart';
import 'app_icons.dart';
import 'profile_list_tile.dart';

class ProfileMenuOptions extends StatelessWidget {
  const ProfileMenuOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDefaults.padding),
      padding: const EdgeInsets.all(AppDefaults.padding),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: AppDefaults.boxShadow,
        borderRadius: AppDefaults.borderRadius,
      ),
      child: Column(
        children: [
          ProfileListTile(
            title: 'حسابي الشخصي',
            icon: AppIcons.profilePerson,
            onTap: () {
              Get.to(()=>Update_Data_User());
            }
          ),
          const Divider(thickness: 0.1),
          ProfileListTile(
            title: 'اعلاناتي',
            icon: AppIcons.menu,
            onTap: () =>()
          ),
          const Divider(thickness: 0.1),
          ProfileListTile(
            title: 'الاعدادات',
            icon: AppIcons.profileSetting,
            onTap: () =>()
          ),
          const Divider(thickness: 0.1),
          ProfileListTile(
            title: 'محفظتي ',
            icon: AppIcons.profilePayment,
            onTap: () =>()
          ),
          const Divider(thickness: 0.1),
          ProfileListTile(
            title: 'تسجيل الخروج',
            icon: AppIcons.profileLogout,
            onTap: () {my_AlertDiloge2(observed: 'هل تريد تسجيل الخروج ', onpress1:(){ FirebaseAuth.instance.signOut();
              Get.to(LoginScreen());}
            ,onpress2: Get.to(Profile_page()));},
          ),
        ],
      ),
    );
  }
}
