import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void getChangeStatusTransparent(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark, // status bar icons' color
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));  
}
void getChangeStatusWhite(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark, // status bar icons' color
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));  
}