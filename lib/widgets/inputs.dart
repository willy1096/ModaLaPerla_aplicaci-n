import 'package:flutter/material.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;

InputDecoration setInputDecoration({String title,String label,String prefix = ''}){
  return InputDecoration(
    hintText: '$title',
    fillColor: Colors.white,
    filled: true,
    labelText: '$label',
    prefixStyle:styleSheet.labelStylePrefix,
    prefixText: prefix,
    hintStyle: TextStyle(color:Color(0xff636E7E),fontWeight:FontWeight.bold),
    border: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color:styleSheet.colorBorder,width: 10.0,
        style: BorderStyle.none
      ),
    ),
    enabledBorder: UnderlineInputBorder(      
      borderSide: BorderSide(color: styleSheet.colorBorder),   
    ),  
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: styleSheet.colorBorder),
      ),
  );
}