import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:laperla/utilities/setStatusBar.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;

class WidgetCardProduct extends StatefulWidget {
  
  final gridViewCount;
  final imgHeight;
  final containerHeight;
  final position;
  WidgetCardProduct({
    this.gridViewCount,
    this.imgHeight,
    this.containerHeight,
    this.position
  });

  @override
  _WidgetCardProductState createState() => _WidgetCardProductState();
}

class _WidgetCardProductState extends State<WidgetCardProduct> {
  @override
  Widget build(BuildContext context) {
    SizedBox _sizedBox = SizedBox(height:5);
    
    
    return Container(
      
          // margin:EdgeInsets.only(left: 10.0,right: 10.0,top: 5,bottom: 5) ,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:BorderRadius.circular(0.0),
            boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: widget.containerHeight!=null?widget.containerHeight:0,
                    margin:EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius:BorderRadius.circular(0.0),
                        child:CachedNetworkImage(
                          imageUrl:'https://ss237.liverpool.com.mx/xl/1072879601.jpg',
                          fit: BoxFit.contain,
                          height: widget.imgHeight!=null ? ( (widget.gridViewCount==1) ? 40 : 40 ) : widget.imgHeight,
                          width: double.infinity,
                          placeholder: (context, url) => Center(
                            child: CircularProgressIndicator(),
                          ),
                          placeholderFadeInDuration: Duration(milliseconds: 1500),
                          errorWidget: (context, url, error) => Icon(Icons.error,color: Colors.redAccent,),
                        ),
                      )
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: SizedBox(
                        child: GestureDetector(
                          onTap: (){
                            
                          },
                          child:widget.position%4==0?
                          Icon(
                            Icons.favorite,color: styleSheet.colorPurple,
                          ):
                          Icon(
                            Icons.favorite_border,color: styleSheet.colorPurple,
                          )
                        ),
                      )
                  ),
                  widget.position%3==0?
                  Positioned(
                      top: 0,
                      left: 0,
                      child: SizedBox(
                          child: FadeInRight(
                            child: Container(
                              padding: EdgeInsets.only(left:5.0,right: 5.0,bottom: 3.0,top:3.0),
                              decoration: BoxDecoration(
                                // borderRadius:BorderRadius.circular(10.0),
                                color: styleSheet.colorAmarrillobajo
                              ),
                              child: Text('New',style: TextStyle(color:styleSheet.colorLila,fontSize:13,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        )
                    ):Container()
                ],
              ),
              _sizedBox,
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left:5,right:5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.star,color:styleSheet.colorAmarrillobajo,size: 14,),
                              Icon(Icons.star,color:styleSheet.colorAmarrillobajo,size: 14,),
                              Icon(Icons.star,color:styleSheet.colorAmarrillobajo,size: 14,),
                              Icon(Icons.star,color:styleSheet.colorGrisbajo,size: 14,),
                              Icon(Icons.star,color:styleSheet.colorGrisbajo,size: 14,),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('\$170.50MXN ',style: styleSheet.textproductListRed ,textScaleFactor: 0.8, maxLines: 2)
                            ],
                          )
                        ],
                      ),
                    ),
                    _sizedBox,
                    Container(
                      margin: EdgeInsets.only(left:5,right:10),
                      child: Row(
                        children: <Widget>[
                          Flexible(child: Text('Shirt G-090 ',style: styleSheet.textproductList ,textScaleFactor: 0.9, maxLines: 2)
                          ),
                        ],
                      ),
                    ),
                    _sizedBox,
                    Container(
                      margin: EdgeInsets.only(left:5,right:10),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit elitelitelitelit consectetur',style: styleSheet.textproductDetail ,textScaleFactor: 0.9,softWrap: true,overflow: TextOverflow.fade, maxLines: 2,)
                          ),
                        ],
                      ),
                    ),
                    _sizedBox,
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left:5,right:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    MaterialButton(
                      color: styleSheet.colorPurple,
                      minWidth: 0,
                      padding: EdgeInsets.only(left:10,right:10),
                      height: 25,
                      onPressed: (){
                        Navigator.of(context).pushNamed('productDetail');
                        getChangeStatusTransparent();
                      },
                      child: Text('Detalle',style: TextStyle(color:Colors.white,fontFamily:'Montserrat',fontWeight: FontWeight.w700,fontSize: 10)),
                    ),
                    SizedBox(width:5),
                    MaterialButton(
                      color: styleSheet.colorAmarillo,
                      minWidth: 0,
                      padding: EdgeInsets.only(left:10,right:10),
                      height: 25,
                      onPressed: ()=>Navigator.pushNamed(context, 'cardList'),
                      child: Text('Carrito',style: TextStyle(color:Colors.white,fontFamily:'Montserrat',fontWeight: FontWeight.w700,fontSize: 10)),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        );
  }
}