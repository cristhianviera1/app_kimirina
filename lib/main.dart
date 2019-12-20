import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kimirina_app/utils/colors.dart';
import 'app.dart';


void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: primaryDark,
    systemNavigationBarColor: primaryDark
  ));
  runApp(App());
}