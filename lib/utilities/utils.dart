// Todos los elementos comunes van aquí, por ejemplo, las constantes utilizadas en el proyecto.
import 'package:flutter/material.dart';

  //tamaños
  double sizeHeader = 24.0;
  double sizeSubHeader = 16.0;
  double sizeTextInfo = 12.0;

  //Colores
  Color  colorBackground = Color(0xffF5F7F9);
  Color colorDark = Color(0xff0C1523);
  Color colorAmarillo = Color(0xffF3DBC3); //amarillo
  Color colorAmarrillobajo = Color(0xfffbf4b4); //amarillo
  Color colorCursor = Color(0xfffbf4b4); //amarillo
  Color colorPurple = Color(0xff552363); //morado
  Color colorGrey = Color(0xffc2a3c9); //lila
  Color colorLila = Color(0xffb788bc); //lila
  // Color colorGrey = Color(0xffB9C0CA);
  Color colorGreyStrong = Color(0xff636E7E); 
  Color colorOrange = Color(0xffC8B400); 
  Color colorGrisbajo = Color.fromARGB(60, 179, 179, 179); 
  Color colorproduct = Color(0xff231F20); 
  Color colorproductDetail = Color(0xffb788bc);
  Color colorDivider = Color(0xffb788bc); 
  Color colorinfo = Color(0xff5edfff); 
  Color colorinfoblue = Color(0xff3e64ff); 
  Color colorRed = Color(0xffBE1E2D); 
  Color colorinputs = Color.fromARGB(255,248, 248, 248);
  Color colorBorder = Color.fromARGB(255,239, 239, 244);
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
  BoxDecoration decorationPercentage = BoxDecoration(color:Color(0xffb788bc),borderRadius:BorderRadius.circular(20));

  UnderlineInputBorder underlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xffffffff),width: 1.0),
  );
  UnderlineInputBorder underlineInputBorderFocus = UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xffffffff),width: 2.0),
  );

  TextStyle textFormField = TextStyle(fontFamily:'DM_Sans',color:Colors.white, fontWeight:FontWeight.bold);
  TextStyle labelStyle = TextStyle(fontFamily:'DM Sans',color: Color(0xff552363),fontSize: 20,fontWeight: FontWeight.bold);
  TextStyle labelStylePrefix = TextStyle(fontFamily:'DM_Sans',color:Color(0xfffbf4b4),fontSize: 17,fontWeight: FontWeight.bold);
  TextStyle hintStyle =  TextStyle(fontFamily:'DM_Sans',color:Color(0xff636E7E),fontWeight:FontWeight.bold);


  
 BoxShadow boxShadowCards = BoxShadow(
  color: Colors.grey.withOpacity(0.2),
  spreadRadius: 1,
  blurRadius: 5,
  offset: Offset(0, 3), // changes position of shadow
);
BoxShadow boxShadowCardsopacity =  BoxShadow(
  color: Colors.grey.withOpacity(0.1),
  spreadRadius: 1.0,
  blurRadius: 1.0,
  offset: Offset(0, 1), // changes position of shadow
);
