import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:one/core/class/statusrequt.dart';
import 'package:one/core/contant/Colors_and_SizeScreen.dart';
import 'package:one/core/contant/My_Them.dart';
import 'package:one/core/contant/linkapi.dart';

import '../../../controller/Users_Controllers.dart';
import 'app_defaults.dart';
import 'package:get/get.dart';

class UserData extends StatelessWidget {
  // const UserData({
  //   Key? key,
  // }) : super(key: key);

  Users_Controllers users_controllers=Get.put(Users_Controllers());

  @override
  Widget build(BuildContext context) {
    return
    GetBuilder<Users_Controllers>(builder: (controller) {
      return controller.statusReoust==StatusRequst.success?
      Padding(
        padding: EdgeInsets.all(AppDefaults.padding),
        child: Row(
          children: [
            SizedBox(
                width: 110,
                height: 110,
                child: Expanded(

                  child: ClipOval(
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Image.network(
                          "${LinkApi.server}${users_controllers.user_data['name_img']} ",
                          fit: BoxFit.cover,
                        ),
                      )),
                )),
            const SizedBox(width: AppDefaults.padding),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${users_controllers.user_data['name_user']}',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white,fontSize: 24),
                  ),
                  Text(
                    "تاريخ الانضمام : ${users_controllers.user_data['date_user']}",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.normal, color: Colors.white,fontSize: 17),
                  ),
                  const SizedBox(height: 0),
                  Text(
                    'id: 230434909',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.white,fontSize: 19),
                  ),
                  const SizedBox(height: 0),
                  Text(
                    "الموقع : تعز -الحوبان",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.white,fontSize: 17),
                  ),
                  Container(

                      margin: EdgeInsets.only(top: 9),
                      width: 180,
                      child: RatingBar(ratingWidget: RatingWidget(

                          full: Icon(Icons.star,color: Colors.yellow.shade400,),
                          half:  Directionality(child:Icon(Icons.star_half_outlined,color:Colors.yellow.shade400),textDirection:TextDirection.ltr),
                          empty: Icon(Icons.star_outline,color: my_white,)),
                        onRatingUpdate: (value) => Icon(Icons.star_outline),
                        ignoreGestures: false,
                        itemSize: 35,
                        allowHalfRating: true,

                        initialRating: 2,
                      ),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10),

                      )
                  ),

                ],
              ),
            )
          ],
        ),
      ):
          CircularProgressIndicator();
    },
    );

  }
}
