
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:animate_do/animate_do.dart';

import '../widget/widet_start/Conten_Sigup_screen.dart';

class Sigup_Screen extends StatefulWidget {
  const Sigup_Screen({super.key});

  @override
  State<Sigup_Screen> createState() => __Sigup_ScreenState();
}

class __Sigup_ScreenState extends State<Sigup_Screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Conten_Sinup_Screen()
    );
  }
}
