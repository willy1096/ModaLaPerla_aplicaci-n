import 'package:flutter/material.dart';
import 'package:laperla/widgets/appbar.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
import 'package:laperla/widgets/drawer_menu.dart';
import 'package:laperla/widgets/widget_card_list.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    
    List cardList = [1,2,3,4,5,6,7,8];
    return Scaffold(
      backgroundColor: styleSheet.colorBackground,
      appBar: appBarAplication(),
      endDrawer:MyEndDrawerMenu(),
      endDrawerEnableOpenDragGesture: true,
      body: Stack(
        children: <Widget>[ 
          Container(
            child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height:10),
                itemCount:cardList.length,
                itemBuilder:(context,int i)=>WidgetCardList(
                  id: i,
                  index: i,
                  name: "\$10$i",
                  description: "Foean Sneakers",
                  urlImage:'https://source.unsplash.com/random',
                  size: "5",
                  percentage: (40 - i).toString(),
                  price: "200",
                  ultimo:cardList.length
                )
              )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom:30),
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
                    onPressed: (){},
                    child: ButtonTheme(
                      child:Text('Proceed to Checkout',style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold),)
                    ),
                  )
                )
              ),
            ),
          ),
        ],
      )
    );
  }
}
