import 'package:flutter/material.dart';
import 'package:laperla/screens/Search/contacto_search.dart';
import 'package:laperla/utilities/setStatusBar.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
import 'package:laperla/widgets/appbar.dart';
import 'package:laperla/widgets/Product_Widget/card_product_slide.dart';
import 'package:laperla/widgets/drawer_menu.dart';
class ProductHome extends StatefulWidget {
  @override
  _ProductHomeState createState() => _ProductHomeState();
}

class _ProductHomeState extends State<ProductHome> {
   ScrollController _controller = ScrollController();
   ScrollController _controllerDos = ScrollController();
    double netxScroll = 0.0;
    double netxScrolldos = 0.0;

    
   @override
  void initState() {
    super.initState();
    
    _controller.addListener(() {
       setState(() {
          netxScroll = _controller.offset;
       });
    });
    _controllerDos.addListener(() {
       setState(() {
          netxScrolldos = _controllerDos.offset;
       });
    });
  }

 
  @override
  void dispose() {
    getChangeStatusGrey();
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double media = MediaQuery.of(context).size.width;
    // print("media $media");
    // print("netxScroll $netxScroll");
    
    return Scaffold(
      backgroundColor: styleSheet.colorBackground,
      appBar: appBarAplication(),
      drawer: MyEndDrawerMenu(),
      drawerEnableOpenDragGesture: true,
      // endDrawer:MyEndDrawerMenu(),
      // endDrawerEnableOpenDragGesture: true,
      body:ListView(
        children: <Widget>[
          styleSheet.separadorContainer,
          GestureDetector(
            onTap: ()async{
                  showSearch(
                    context: context,
                    delegate: ProductSearchDelegate('Buscar...')
                  );
                },
            child: Container(
              margin:styleSheet.marginContainer,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.circular(
                  20.0
                )
              ),
              child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Buscar...',style: TextStyle(color:styleSheet.colorGrey),),
                    Icon(Icons.search,color: styleSheet.colorGrey,)
                  ],
                ),
              
            ),
          ),
          styleSheet.separadorContainer,
          styleSheet.separadorContainer,
          styleSheet.separadorContainer,
          Container(
            margin:styleSheet.marginContainer,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(child: Text('Nuevas Ofertas',style: TextStyle(fontSize:styleSheet.sizeHeader,fontWeight: FontWeight.w400),)),
                Row(
                  children: <Widget>[
                    Container(
                      height: 7,
                      width: netxScroll > (media + media )  ? 7 : 40,
                      decoration: BoxDecoration(
                      color:Colors.purple,
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                    ),
                    SizedBox(width:5),
                    Container(
                      height: netxScroll > (media ) &&  netxScroll < (media + media )   ? 10 :  7,
                      width: netxScroll > (media )  &&  netxScroll < (media + media ) ? 10 :  7,
                      decoration: BoxDecoration(
                      color:netxScroll >(media) &&  netxScroll < (media + media ) ? styleSheet.colorAmarillo : styleSheet.colorPurple,
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                    ),
                    SizedBox(width:5),
                    Container(
                      height: netxScroll > (media + media )  ? 10 :  7,
                      width: netxScroll >(media + media ) ? 10 : 7,
                      decoration: BoxDecoration(
                      color:netxScroll >(media + media ) ? styleSheet.colorAmarillo : styleSheet.colorPurple,
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          styleSheet.separadorContainer,
          Container(
            height: 250,
            child: ListView.builder(
              controller:_controller,
              // itemCount: 30,
              scrollDirection: Axis.horizontal,
               physics: BouncingScrollPhysics(),
              itemBuilder:(context, index) {
                return WidgetCardProductSlide(index:index,);
              }, 
            ),
          ),
           styleSheet.separadorContainer,
           styleSheet.separadorContainer,
           styleSheet.separadorContainer,
          Container(
            margin:styleSheet.marginContainer,
            child: ClipRRect(
              borderRadius:BorderRadius.circular(25.0) ,
              child:Image.network('https://i.pinimg.com/474x/9e/42/e0/9e42e09a0fb02a3e4a969ce224255ca6.jpg'),
            )
          ),
          styleSheet.separadorContainer,
          styleSheet.separadorContainer,
          styleSheet.separadorContainer,
          Container(
            margin:styleSheet.marginContainer,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(child: Text('Sugerencias',style: TextStyle(fontSize:styleSheet.sizeHeader,fontWeight: FontWeight.w400),)),
                Row(
                  children: <Widget>[
                    Container(
                      height: 7,
                      width: netxScrolldos > (media + media )  ? 7 : 40,
                      decoration: BoxDecoration(
                      color:Colors.purple,
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                    ),
                    SizedBox(width:5),
                    Container(
                      height: netxScrolldos > (media ) &&  netxScrolldos < (media + media )   ? 10 :  7,
                      width: netxScrolldos > (media )  &&  netxScrolldos < (media + media ) ? 10 :  7,
                      decoration: BoxDecoration(
                      color:netxScrolldos >(media) &&  netxScrolldos < (media + media ) ? styleSheet.colorAmarillo : styleSheet.colorPurple,
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                    ),
                    SizedBox(width:5),
                    Container(
                      height: netxScrolldos > (media + media )  ? 10 :  7,
                      width: netxScrolldos >(media + media ) ? 10 : 7,
                      decoration: BoxDecoration(
                      color:netxScrolldos >(media + media ) ? styleSheet.colorAmarillo : styleSheet.colorPurple,
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
           styleSheet.separadorContainer,
          Container(
            height: 250,
            child: ListView.builder(
              controller:_controllerDos,
              // itemCount: 30,
              scrollDirection: Axis.horizontal,
              //  physics: BouncingScrollPhysics(),
              itemBuilder:(context, index) {
                return WidgetCardProductSlide(index:index,);
              }, 
            ),
          ),
          styleSheet.separadorContainer,
          styleSheet.separadorContainer,
          styleSheet.separadorContainer,
          
          Container(
            margin:styleSheet.marginContainer,
            child: ClipRRect(
              borderRadius:BorderRadius.circular(25.0) ,
              child:Image.network('https://i.pinimg.com/474x/9e/42/e0/9e42e09a0fb02a3e4a969ce224255ca6.jpg'),
            )
          ),
          
          

        ],
      ) ,
    );
  }
  // Widget _itemCard(int index){
    
  //   return Container(
  //     width: 200,
  //     margin: EdgeInsets.only(left:10,right:0),
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius:BorderRadius.circular(40.0),
  //        boxShadow: [
  //               BoxShadow(
  //                 color: Colors.grey.withOpacity(0.2),
  //                 spreadRadius: 2,
  //                 blurRadius: 7,
  //                 offset: Offset(0, 3), // changes position of shadow
  //               ),
  //             ],
  //     ),
  //     child:Column(
  //       children: <Widget>[
  //         Container(
  //           child: ClipRRect(
  //             borderRadius:BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)) ,
  //             child: Image.network(
  //               'https://cdn.pixabay.com/photo/2017/07/31/15/06/boot-2558324_960_720.jpg',fit: BoxFit.cover,
  //               height: 150,
  //               width: double.infinity,
  //             )),
  //         ),
  //         // SizedBox(height:15),
  //         Container(
  //           width: 195,
  //           height: 15,
  //           decoration: BoxDecoration(
  //             color: Colors.white,
  //             boxShadow: [
  //               BoxShadow(
  //                 color: Colors.grey.withOpacity(0.2),
  //                 spreadRadius: 2,
  //                 blurRadius:8,
  //                 offset: Offset(0, -10), // changes position of shadow
  //               ),
  //             ],
  //           ),
  //         ),
  //         Container(
  //           width: double.infinity,
  //           height:85,
  //           decoration: BoxDecoration(
  //             color: Colors.white,
  //             borderRadius:BorderRadius.only(bottomLeft: Radius.circular(25.0), bottomRight: Radius.circular(25.0)),
              
  //           ),
  //           child: Column(
  //             children: <Widget>[
  //               Container(
  //                 padding: EdgeInsets.only(left:10),
  //                 child: Row(
  //                   children: <Widget>[
  //                     Text('\$75.95',style:styleSheet.textPrice,),
  //                     SizedBox(width:10),
  //                     Container(
  //                       padding: EdgeInsets.only(left:8,right:8,top:3,bottom:3),
  //                       decoration: styleSheet.decorationPercentage,
  //                       child: Text('40%',style: styleSheet.textPercentage,),
  //                     )
  //                   ]
  //                 ),
  //               ),
  //               SizedBox(height:10),
  //               Container(
  //                 padding: EdgeInsets.only(left:10,right:10),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: <Widget>[
  //                     Flexible(child: Text('Foam sneakers ',style: styleSheet.textPriceDescription, maxLines: 2,)),
  //                     Container(
  //                       height: 20,
  //                       width: 20,
  //                       decoration: BoxDecoration(
  //                         color:Colors.purple,
  //                         borderRadius: BorderRadius.circular(50.0)
  //                       ),
  //                     )
  //                   ]
  //                 ),
  //               )
  //             ],
  //           )
  //         )
  //       ],
  //     )
  //   );
  // }
}