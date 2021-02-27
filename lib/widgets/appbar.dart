import 'package:flutter/material.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;

Widget appBarAplication () {
  
    return  AppBar(
        iconTheme: IconThemeData(color:Colors.black),
        brightness: Brightness.light,
        elevation: 0,
        centerTitle: false,
        backgroundColor:styleSheet.colorBackground,
        title: Container(
            margin:styleSheet.marginContainer,
            child: Row(
              children: <Widget>[
                Image.network('https://www.ejemplos.co/wp-content/uploads/2015/11/Logo-Adidas.jpg',width: 60,),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text:TextSpan(
                          text:'Hola ',
                          style: TextStyle(color: styleSheet.colorDark, fontSize: styleSheet.sizeSubHeader,fontFamily:'Roboto'),
                          children:<TextSpan>[
                            TextSpan(text: 'Ni nna',style: TextStyle(color:styleSheet.colorDark, fontSize: styleSheet.sizeSubHeader,fontFamily:'Roboto',fontWeight: FontWeight.bold),),
                          ]
                        )
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(child: Text('Tienes 3 articulos',style: TextStyle(color: styleSheet.colorGreyStrong, fontSize:styleSheet.sizeTextInfo,fontFamily:'Roboto',fontWeight: FontWeight.w400)))
                        ],
                      )
                    ],
                  )
                ),
                
              ],
            ),
          ),
          actions: <Widget>[
            Builder(
              builder:(context){
                return InkWell(
                  onTap:()=> Scaffold.of(context).openEndDrawer(),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.format_align_center,color: Colors.black,),
                  ),
                );
              }
            ),
           
          ],
      );
  
}