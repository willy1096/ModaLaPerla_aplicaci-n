import 'package:flutter/material.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;

class WidgetCardProductDetail extends StatefulWidget {
  
  final gridViewCount;
  final imgHeight;
  final containerHeight;
  WidgetCardProductDetail({
    this.gridViewCount,
    this.imgHeight,
    this.containerHeight
  });

  @override
  _WidgetCardProductDetailState createState() => _WidgetCardProductDetailState();
}

class _WidgetCardProductDetailState extends State<WidgetCardProductDetail> {
  @override
  Widget build(BuildContext context) {
    SizedBox _sizedBox = SizedBox(height:5);

    
    return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow:[
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
            ]
          ),
          // height: 670,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap:()=> Navigator.pushNamed(context, 'productSlider'),
                      child: Container(
                      height: widget.containerHeight!=null?widget.containerHeight:0,
                      // margin:EdgeInsets.all(5),
                        child: ClipRRect(
                          borderRadius:BorderRadius.circular(0.0),
                          child:Image.network(
                            'https://i.pinimg.com/474x/9e/42/e0/9e42e09a0fb02a3e4a969ce224255ca6.jpg',
                            fit: BoxFit.fill,
                            height: widget.imgHeight!=null ? ( (widget.gridViewCount==1) ? 40 : 40 ) : widget.imgHeight,
                            width: double.infinity,
                          ),
                        )
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite_border,size: 30,color: Colors.redAccent,),
                    ),
                    //  alignment: Alignment.topRight,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('1/6',style: TextStyle(color:Colors.black),),
                    ),
                    //  alignment: Alignment.topRight,
                  ),
                ],
              ),
              _sizedBox,
              Container(
                margin: EdgeInsets.only(left:10,right:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left:0,right:5),
                          child: Row(
                            children: <Widget>[
                              Text('Shirt G-090 ',style: styleSheet.textproductList ,textScaleFactor: 0.9, maxLines: 2)
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.star,color:styleSheet.colorOrange,size: 18,),
                            Icon(Icons.star,color:styleSheet.colorOrange,size: 18,),
                            Icon(Icons.star,color:styleSheet.colorOrange,size: 18,),
                            Icon(Icons.star,color:styleSheet.colorGrisbajo,size: 18,),
                            Icon(Icons.star,color:styleSheet.colorGrisbajo,size: 18,),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                         Container(
                          // margin: EdgeInsets.only(left:5,right:10),
                          child: Row(
                            children: <Widget>[
                              Text('\$233.00MXN',style: styleSheet.textproductList ,textScaleFactor: 0.9, maxLines: 2)
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              _sizedBox,
              Container(
                margin: EdgeInsets.only(left:10,right:10),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit elitelitelitelit consecteturLorem ipsum dolor sit amet, consectetur adipiscing elit elitelitelitelit consecteturLorem ipsum dolor sit amet, consectetur adipiscing elit elitelitelitelit consectetur',style: styleSheet.textproductDetail ,textScaleFactor: 0.9,softWrap: true,overflow: TextOverflow.fade,)
                    ),
                  ],
                ),
              ),
              _sizedBox,
              Container(
                margin: EdgeInsets.only(left:5,right:10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    MaterialButton(
                      color: styleSheet.colorAmarillo,
                      minWidth: 0,
                      padding: EdgeInsets.only(left:50,right:50),
                      height: 30,
                      onPressed: (){},
                      child: Text('Agregar al carrito',style: TextStyle(color:Colors.white,fontFamily:'Montserrat',fontWeight: FontWeight.w700,fontSize: 12)),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
  }
}