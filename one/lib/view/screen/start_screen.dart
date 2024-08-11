import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../widget/widet_start/Conten_Start_Screen.dart';

class Start_Screen extends StatefulWidget {
  const Start_Screen({super.key});

  @override
  State<Start_Screen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Start_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Conten_Start_Screen(),
    );
  }
}