// Todos los elementos comunes van aquí, por ejemplo, las constantes utilizadas en el proyecto.
import 'package:flutter/material.dart';

  //tamaños
  double sizeHeader = 24.0;
  double sizeSubHeader = 16.0;
  double sizeTextInfo = 12.0;

  //Colores
  Color  colorBackground = Color(0xffF5F7F9);
  Color colorDark = Color(0xff0C1523);
  Color colorGreen = Color(0xffBFBA0C);
  Color colorPurple = Color(0xff7B05AD);
  Color colorGrey = Color(0xffB9C0CA);
  Color colorGreyStrong = Color(0xff636E7E); 
  Color colorOrange = Color(0xffC8B400); 
  Color colorGrisbajo = Color.fromARGB(60, 179, 179, 179); 
  Color colorproduct = Color(0xff231F20); 
  Color colorproductDetail = Color.fromARGB(80, 35, 31, 32); 
  Color colorDivider = Color(0xffE0E4E9); 
  Color colorinfo = Color(0xff5edfff); 
  Color colorinfoblue = Color(0xff3e64ff); 
  Color colorRed = Color(0xffBE1E2D); 
  
  //Texto  
  SizedBox separadorContainer = SizedBox(height: 15);
  TextStyle textPrice = TextStyle(color:colorDark,fontWeight: FontWeight.w600,fontSize: 14,fontFamily: 'Roboto');
  TextStyle textPriceDescription = TextStyle(color:colorDark,fontSize: 15,fontFamily: 'Roboto');
  TextStyle textPercentage = TextStyle(color:Colors.white,fontSize: 10,fontFamily: 'Roboto');
  TextStyle textproductList = TextStyle(color:colorproduct,fontSize: 15,fontFamily: 'Montserrat',fontWeight: FontWeight.w700);
  TextStyle textproductListRed = TextStyle(color:colorRed,fontSize: 15,fontFamily: 'Montserrat',fontWeight: FontWeight.w700);
  TextStyle textproductDetail = TextStyle(color:colorproductDetail,fontSize: 12,fontFamily: 'Montserrat',fontWeight: FontWeight.w400,);

  //Margenes
  EdgeInsets marginContainer = EdgeInsets.only(left:10,right:10);

  //decoraciones
  BoxDecoration decorationPercentage = BoxDecoration(color:Color(0xffF06595),borderRadius:BorderRadius.circular(20));

  UnderlineInputBorder underlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xff979797),width: 1.0),
  );

  TextStyle textFormField = TextStyle(fontFamily:'DM_Sans',color:Color(0xff0C1523), fontWeight:FontWeight.bold);
  TextStyle labelStyle = TextStyle(fontFamily:'DM_Sans',color: Color(0xff7B05AD),fontSize: 20,fontWeight: FontWeight.bold);
  TextStyle labelStylePrefix = TextStyle(fontFamily:'DM_Sans',color:Color(0xffBFBA0C),fontSize: 17,fontWeight: FontWeight.bold);
  TextStyle hintStyle =  TextStyle(fontFamily:'DM_Sans',color:Color(0xff636E7E),fontWeight:FontWeight.bold);