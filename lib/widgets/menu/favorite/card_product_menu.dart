import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;

class CardMenuProduct extends StatelessWidget {
  final double marginbutton;
  final double radiusTop;
  final double radiusbutton;
  final double marginleft;
  final double marginright;
  final int index;
  final int ultimoitem;
  final bool active;
  
  CardMenuProduct({
    @required this.marginbutton,
    @required this.radiusTop,
    @required this.radiusbutton,
    this.index = 0,
    this.ultimoitem = 0,
    this.active = false,
    this.marginleft = 10.0,
    this.marginright = 10.0
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:Colors.white,
        border: Border.all(color:Colors.white),
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(active ? this.index == 0 ? 20.0 : radiusTop : radiusTop ),
          topRight:Radius.circular(active ? this.index == 0 ? 20.0 : radiusTop : radiusTop),
          bottomLeft:Radius.circular(radiusbutton),
          bottomRight:Radius.circular(radiusbutton),
        ),
        boxShadow:[
          active ?
          styleSheet.boxShadowCardsopacity
          :styleSheet.boxShadowCards
           
        ]
      ),
      margin: EdgeInsets.only(bottom:ultimoitem==index?100:marginbutton,left: marginleft,right:marginright),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 90,
            height:125,
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: CachedNetworkImage(
                    imageUrl:'https://ss237.liverpool.com.mx/xl/1072879601.jpg',
                    fit: BoxFit.cover,
                    height: 90,
                  ),
                ),
                Container(
                  child: Text('\$170.50MXN ',style: TextStyle(color:styleSheet.colorLila,fontSize: 14),)
                ),
              ],
            ),
            
          ),
          
          SizedBox(width:10),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Lighting Azul',style:styleSheet.textproductList,textAlign: TextAlign.start),
              SizedBox(height:10),
              Row(
                children: <Widget>[
                  Text('Tenis ',style: TextStyle(color:styleSheet.colorLila,fontSize: 14),),
                  
                ],
              ),
              SizedBox(height:5),
              Text('Talla  ',style: TextStyle(color:styleSheet.colorDark,fontSize: 14),),
              SizedBox(height:10),
              Row(
                children: <Widget>[
                  Icon(Icons.star,color: styleSheet.colorAmarrillobajo,size: 15,),
                  Icon(Icons.star,color: styleSheet.colorAmarrillobajo,size: 15,),
                  Icon(Icons.star,color: styleSheet.colorAmarrillobajo,size: 15,),
                  Icon(Icons.star,color: styleSheet.colorAmarrillobajo,size: 15,),
                  Icon(Icons.star,color: styleSheet.colorAmarrillobajo,size: 15,),
                  Icon(Icons.star,color: styleSheet.colorAmarrillobajo,size: 15,),
                ],
              )
            ],
          ),
          Expanded(child:Container()),
          GestureDetector(
            child:Icon(Icons.favorite,color: styleSheet.colorPurple,size: 30,)
          ),
          ultimoitem==index-1?
          SizedBox(height:50)
          :Container()
        ],
      ),
    );
  }
}