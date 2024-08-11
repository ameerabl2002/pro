import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'app_defaults.dart';



class ProfileSqureTile extends StatelessWidget {
  const ProfileSqureTile({
    Key? key,
    required this.label,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final String item;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppDefaults.borderRadius,
        child: Padding(
          padding:  EdgeInsets.all(AppDefaults.padding),
          child: Column(
            children: [
            Text(
            item,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.black,fontWeight: FontWeight.bold,fontSize: 27
            ),
            ) , SizedBox(height: 0),
              Text(
                label,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
