
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
import 'package:laperla/widgets/Product_Widget/card_product_buy_detail.dart';
import 'package:laperla/widgets/Product_Widget/card_product_lista_detail.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail>  {
  CarouselController buttonCarouselController = CarouselController();
  int _pagePosition = 0;
  
  @override
  void initState() {
    super.initState();
    getChangeStatus();
  }
  void getChangeStatus(){
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  }
   
   @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
   

   List items = [
    'https://http2.mlstatic.com/D_819947-MLA32359622715_092019-O.jpg',
    'https://ae01.alicdn.com/kf/HTB1WD0Da.LrK1Rjy1zbq6AenFXan/Zapatos-casuales-para-Hombre-zapatillas-de-deporte-transpirables-Zapatos-para-Hombre-Zapatos-para-Hombre-Zapatos-para.jpg',
    'https://i.pinimg.com/originals/0d/07/8c/0d078c9cd2026aa1f6d12dcd26283882.jpg',
  ];
  
    return  Scaffold(
        
        backgroundColor: Colors.white,
        body:  CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                  // title: Text('hj',style: TextStyle(color:Colors.black),),
                  actionsIconTheme: IconThemeData(color:styleSheet.colorDark),
                  iconTheme:IconThemeData(color:styleSheet.colorDark),
                  brightness: Brightness.light,
                  backgroundColor: Colors.white,
                  floating: true,
                  snap: false,
                  pinned: true,
                  stretch: true,
                  onStretchTrigger: () {
                    // Function callback for stretch
                    return;
                  },
                  expandedHeight: 260.0,
                  flexibleSpace: FlexibleSpaceBar(
                    stretchModes: <StretchMode>[
                      StretchMode.zoomBackground,
                      StretchMode.blurBackground,
                      StretchMode.fadeTitle,
                    ],
                    centerTitle: true,
                    title:  Container(
                    margin: EdgeInsets.only(left:10,right: 10),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        // Text('Flight Report',
                        //   style:TextStyle(color:styleSheet.colorDark,fontSize: 16
                        // )),
                        InkWell(
                          onTap:()=> Navigator.pushNamed(context, 'productSlider'),
                          child: Icon(Icons.photo_library,color:Colors.grey[400],size: 15,)
                        )
                      ]
                    )
                    ),
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 350.0,
                            aspectRatio: 16/9,
                            viewportFraction: 1.0,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            scrollPhysics: ScrollPhysics(),
                            onPageChanged: (index, reason) {
                             setState(() {
                               _pagePosition = index+1;
                             });
                            },
                            reverse: false,
                            autoPlay: false,
                            autoPlayInterval: Duration(seconds: 2),
                            autoPlayAnimationDuration: Duration(milliseconds: 2),
                            autoPlayCurve: Curves.ease,
                            scrollDirection: Axis.horizontal,
                            pageSnapping: true,
                            enlargeCenterPage: true

                          ),
                          itemCount: items.length,
                          itemBuilder:(context, index, realIndex) =>Image.network(
                            items[index],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                       
                        Container(
                          margin: EdgeInsets.only(bottom:20,left: 10,right: 10),
                          child: SizedBox(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("$_pagePosition/${items.length}",style: TextStyle(color:styleSheet.colorDark,fontWeight: FontWeight.w700,fontSize:16,fontFamily: 'Roboto'))
                                ],
                              ),
                            )
                        ),
                      
                      ],
                    ),
                  ),
              ),
              
            
              
              SliverList(
                 delegate: SliverChildListDelegate([
                  SingleChildScrollView(
                    child: DetailProductBuy()
                  )
                ])
              ),
              
              SliverList(
                 delegate: SliverChildListDelegate([
                  SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left:12,bottom: 0),
                          child: Text('Más productos',style:TextStyle(color:styleSheet.colorDark,fontWeight: FontWeight.w700,fontSize: 20,fontFamily: 'Montserrat'))
                        ),
                        DetailProductDescription(),
                        SizedBox(height:60)
                      ],
                    )
                  )
                ])
              ),
             
            // SliverFixedExtentList(
            //   itemExtent: 50.0,
            //   delegate: SliverChildBuilderDelegate(
            //     (BuildContext context, int index) {
            //       return Container(
            //         alignment: Alignment.center,
            //         color: Colors.lightBlue[100 * (index % 9)],
            //         child: Text('List Item $index'),
            //       );
            //     },
            //   ),
            // ),
        ],

        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: styleSheet.colorAmarillo,
          mini: true,
          onPressed:(){

          },
          child: Icon(
            Icons.shopping_cart_outlined,

          ),
        ),
      
    );
  }
}

