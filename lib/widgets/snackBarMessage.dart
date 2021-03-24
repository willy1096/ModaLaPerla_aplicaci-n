import 'package:flutter/material.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;

SnackBar snackBarMessage(){
  return SnackBar(
    duration: Duration(seconds:3),
    backgroundColor:styleSheet.colorAmarillo,
    padding: EdgeInsets.all(10),
    shape: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      // borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:Radius.circular(10)),
  
      borderSide: BorderSide(color: Colors.transparent,width: 0)
    ),
    behavior:SnackBarBehavior.floating,
    elevation: 5,

    content: Text('Yay! A SnackBar!'),
      action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
          // Some code to undo the change.
          },
      ),
  );
}