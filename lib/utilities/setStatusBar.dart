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
void getChangeStatusGrey(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor:Colors.white, // navigation bar color regresar,inicio,menu
    statusBarColor:Color(0xffF5F7F9),//fondo del color de statusbar donde esta la bateria etc
    statusBarIconBrightness: Brightness.dark,// status bar icons' color bateria etc
    systemNavigationBarIconBrightness: Brightness.light,// color de los iconos de 1navigation bar color regresar,inicio,menu
    statusBarBrightness: Brightness.light,
  ));  
}
void getChangeStatusLila(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
    statusBarColor:Color(0xffb788bc),
    statusBarIconBrightness: Brightness.light, // status bar icons' color bateria etc
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));  
}

