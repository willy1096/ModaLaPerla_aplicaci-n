import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
import 'package:laperla/widgets/Product_Widget/card_product.dart';
// import 'package:laperla/widgets/drawer_filter.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  int gridViewCount = 2;
  // int _gridView = 100;
  double _sizeCard;
  @override
  Widget build(BuildContext context) {
    var _sizeQuery = MediaQuery.of(context).size;
  
    /*24 is for notification bar on Android*/
    // final double itemHeight = (_sizeQuery.height - kToolbarHeight - _gridView) / 2;
    // final double itemWidth = _sizeQuery.width / 2;
    final double _desiredItemWidth = _sizeQuery.width/3;
    print(_sizeCard);
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: styleSheet.colorDark),
        title: Text('Shopping Apps',style:TextStyle(color:styleSheet.colorPurple)),
        centerTitle: true,
        elevation: 0,
        actionsIconTheme: IconThemeData(
          color:styleSheet.colorDark,
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
               InkWell(
                onTap: () {
                  setState(() {
                    // gridViewCount = 1;
                    // _gridView = 400;
                    _sizeCard = _sizeQuery.width/2;
                  });
                },
                    child: Icon(Icons.format_list_bulleted,color: Colors.grey[400]),
              ),
              SizedBox(width:5),
              InkWell(
                onTap: () {
                  setState(() {
                    // gridViewCount = 2;
                    //  _gridView = 100;
                    
                    _sizeCard = _sizeQuery.width/3;
                  });
                },
                child: Icon(Icons.view_comfy,color: Colors.grey[400],),
              ),
              SizedBox(width:20),
              //  Builder(
              //     builder:(context){
              //       return InkWell(
              //         child:Icon(Icons.filter_list),
              //         onTap:()=> Scaffold.of(context).openEndDrawer(),
              //       );
              //     }
              //   ),
              // SizedBox(width:20),
            ],
          )
        ],
      ),
      // endDrawer:MyEndDrawerFilter(),
      // endDrawerEnableOpenDragGesture: true,
      
      // drawerScrimColor: Colors.transparent,
      body:SafeArea(
        child: Column(
          children: <Widget>[
              Container(
              height: 30,
              child: ListView.builder(
                // itemCount: 30,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder:(context, index) {
                  return Container(
                    margin: EdgeInsets.only(left:5,right:5),
                    child: MaterialButton(
                      elevation: 0,
                      padding: EdgeInsets.symmetric(vertical:0,horizontal:0,),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        // side: BorderSide(color:styleSheet.colorinfo)
                      ),
                      color: styleSheet.colorGrey,
                      onPressed: (){},
                      child: Text('Categoría $index',style: TextStyle(color:Colors.white,fontWeight: FontWeight.w700,fontFamily:'Roboto',fontSize: 10,)),
                    ),
                  );
                }, 
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left:5,right: 5),
                padding: EdgeInsets.all(0),
                child: ResponsiveGridList(
                    desiredItemWidth:_sizeCard!=null?_sizeCard:_desiredItemWidth,
                    minSpacing: 0,
                    children:  List.generate(100, (index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      child:WidgetCardProduct(
                        gridViewCount:gridViewCount,
                        imgHeight:null,
                        containerHeight:150.0,
                        position:index
                      )
                    );
                  }),
                )
              ),
            ),
          ],
        ),
      )
    );
  }
}