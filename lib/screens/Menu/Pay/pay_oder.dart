import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laperla/widgets/menu/favorite/card_product_menu.dart';
import 'package:laperla/widgets/menu/favorite/header_menu.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
class PayOrder extends StatefulWidget {
  @override
  _PayOrderState createState() => _PayOrderState();
}

class _PayOrderState extends State<PayOrder> {

 
  @override
  Widget build(BuildContext context) {
    var _style = TextStyle(color:styleSheet.colorDark,fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w500);
    var _styledos = TextStyle(color:styleSheet.colorDark,fontSize: 18,fontFamily: 'Roboto',fontWeight: FontWeight.w700);
    var _styletext = TextStyle(color:styleSheet.colorDark,fontFamily: 'Roboto',fontWeight: FontWeight.w500,fontSize: 14,);
    return Scaffold(
      // backgroundColor: Colors.white,
      body:Container(
        child: Stack(
          children: [
            CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: [
                  SliverAppBar(
                    backwardsCompatibility: true,
                    elevation: 1,
                    actionsIconTheme: IconThemeData(color:styleSheet.colorDark),
                    iconTheme:IconThemeData(color:Colors.white),
                    brightness: Brightness.dark,
                    backgroundColor: styleSheet.colorPurple,
                    floating: false,
                    snap: false,
                    pinned: true,
                    stretch: true,
                    systemOverlayStyle:SystemUiOverlayStyle.light,
                    onStretchTrigger: () {
                      return;
                    },
                    expandedHeight: 210.0,
                    flexibleSpace: FlexibleSpaceBar(
                      stretchModes: <StretchMode>[
                        StretchMode.zoomBackground,
                        StretchMode.blurBackground,
                        StretchMode.fadeTitle,
                      ],
                      centerTitle: true,
                      title: Text('Total',style: TextStyle(color: Colors.white,fontFamily: 'Roboto'),),
                      background: Stack(
                        fit: StackFit.expand,
                        children: [
                            HeaderMenu(
                              titleHeader: '',
                              heightCard: 240,
                            ),
                           Container(
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow:[
                                 styleSheet.boxShadowCards
                              ]
                            ),
                            margin: EdgeInsets.only(left:10,right:10,top:90,bottom: 10),
                            padding: EdgeInsets.all(10),
                            height: 190,
                            width:double.infinity,
                            child:Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text('Subtotal',style: _style,),
                                      Text('\$250.00',style:_styletext),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text('IVA',style: _style,),
                                      Text('\$100.00',style:_styletext),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text('Envio',style: _style,),
                                      Text('Gratis',style:_styletext),
                                    ],
                                  ),
                                  Divider(color:styleSheet.colorGrey,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text('Total',style: _styledos,),
                                      Text('\$350.00',style:_styletext),
                                    ],
                                  )
                                ]
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate([
                    SingleChildScrollView(
                      child: Container(
                        child: ListView.builder(
                          padding: EdgeInsets.only(top:5),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder:(context,int i){
                            return FadeInLeft(
                              child: CardMenuProduct(
                                marginbutton: 5.0,
                                radiusTop: 20.0,
                                radiusbutton: 20.0,
                                ultimoitem: 10,
                                index: i+1,
                              )
                            );
                          }
                        ),
                      )
                    ),
                  ]
                )
              ),
              ]
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom:40),
                child: Container(
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
                      onPressed: ()=>Navigator.pushNamed(context, 'payCheckout'),
                      child: ButtonTheme(
                        child:Text('Proceder a comprar',style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold),)
                      ),
                    )
                  )
                ),
              ),
            ), 

          ],
        ),
      )
    );
  }
}




  // Container(
  //       // color: Colors.white,
  //       child: Stack(
  //         children: <Widget>[
  //           HeaderMenu(
  //             titleHeader: 'Total',
  //           ),
  //           ListView(
  //             children: <Widget>[
  //                Container(
  //                 margin: EdgeInsets.only(top:120,left: 20,right: 20),
  //                 height: 180,
  //                 padding: EdgeInsets.all(10),
  //                 width: double.infinity,
  //                 decoration: BoxDecoration(
  //                   color:Colors.white,
  //                   borderRadius:BorderRadius.circular(10.0),
  //                   boxShadow:[
  //                     styleSheet.boxShadowCards,
  //                   ]
  //                 ),
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                   children: <Widget>[
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: <Widget>[
  //                         Text('Subtotal',style: _style,),
  //                         Text('\$250.00'),
  //                       ],
  //                     ),
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: <Widget>[
  //                         Text('IVA',style: _style,),
  //                         Text('\$100.00'),
  //                       ],
  //                     ),
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: <Widget>[
  //                         Text('Envio',style: _style,),
  //                         Text('Gratis'),
  //                       ],
  //                     ),
  //                     Divider(),
  //                     Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: <Widget>[
  //                        Text('Total',style: _styledos,),
  //                        Text('\$350.00'),
  //                     ],)
  //                   ],
  //                 ),
  //               ),
  //                 Container(
  //                   margin: EdgeInsets.only(top:30),
  //                   width: double.infinity,
  //                     child:ListView.builder(
  //                       shrinkWrap: true,
  //                       physics: NeverScrollableScrollPhysics(),
  //                       itemCount: 20,
  //                       itemBuilder:(context,int i){
  //                         return FadeInUp(
  //                           child: CardMenuProduct(
  //                             marginbutton: 0.0,
  //                             radiusTop: 0.0,
  //                             radiusbutton: 0.0,
  //                             active: true,
  //                             index:i,
  //                             ultimoitem:19
  //                           )
  //                         );
  //                       }
  //                     )
  //               ),
               
  //             ],
  //           ),
  //           Align(
  //             alignment: Alignment.bottomCenter,
  //             child: Container(
  //               margin: EdgeInsets.only(bottom:30),
  //               child: Container(
  //                 margin: styleSheet.marginContainer,
  //                 height: 60,
  //                 padding: EdgeInsets.only(bottom:5),
  //                 width: double.infinity,
  //                 decoration: BoxDecoration(
  //                   color: Colors.transparent,
  //                   borderRadius: BorderRadius.circular(25.0)
  //                 ),
  //                 child: Container(
  //                   child: MaterialButton(
  //                     elevation: 0,
  //                     color: styleSheet.colorPurple,
  //                     shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(18.0),
  //                     ),
  //                     onPressed: ()=>Navigator.pushNamed(context, 'payCheckout'),
  //                     child: ButtonTheme(
                        
  //                       child:Text('Proceder a comprar',style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold),)
  //                     ),
  //                   )
  //                 )
  //               ),
  //             ),
  //           ),    
  //         ],
  //       ),
  //     ),

   