import 'package:flutter/material.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;

class MyButton  extends StatelessWidget {
  final VoidCallback callbackAction;
  final String nameButton;
  MyButton({
    this.callbackAction,
    this.nameButton = 'unknown'
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: styleSheet.marginContainer,
        height: 60,
        padding: EdgeInsets.only(bottom:5),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(25.0)
        ),
        child: Container(
          child: MaterialButton(
            elevation: 0,
            color: styleSheet.colorPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            onPressed:()=> this.callbackAction(),
            child: ButtonTheme(
              
              child:Text('${this.nameButton}',style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold),)
            ),
          )
        )
      );
  }
}