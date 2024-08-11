import 'dart:convert';

import 'package:animate_do/animate_do.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one/view/screen/sigup_screen.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../widget/widet_start/Conten_Login_Screen.dart';

class LoginScreen extends StatelessWidget {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Conten_Login_Screen(),

    );
  }
}








