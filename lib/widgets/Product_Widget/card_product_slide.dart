import 'package:flutter/material.dart';
import 'package:laperla/utilities/setStatusBar.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
class WidgetCardProductSlide extends StatefulWidget {
  final int index;
  
  WidgetCardProductSlide({
    this.index,
  });

  @override
  _WidgetCardProductSlideState createState() => _WidgetCardProductSlideState();
}

class _WidgetCardProductSlideState extends State<WidgetCardProductSlide> {

    @override
  void initState() {
    super.initState();
  }
   
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.pushNamedAndRemoveUntil(context, 'productDetail', ModalRoute.withName('navigatorHome'));
        getChangeStatusTransparent();
      },
      
      child: Container(
        width: 200,
        margin: EdgeInsets.only(left:10,right:0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.circular(40.0),
           boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
        ),
        child:Column(
          children: <Widget>[
            Container(
              child: ClipRRect(
                borderRadius:BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)) ,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2017/07/31/15/06/boot-2558324_960_720.jpg',fit: BoxFit.cover,
                  height: 150,
                  width: double.infinity,
                )),
            ),
            // SizedBox(height:15),
            Container(
              width: 195,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius:8,
                    offset: Offset(0, -10), // changes position of shadow
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height:85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.only(bottomLeft: Radius.circular(25.0), bottomRight: Radius.circular(25.0)),
                
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left:10),
                    child: Row(
                      children: <Widget>[
                        Text('\$75.95',style:styleSheet.textPrice,),
                        SizedBox(width:10),
                        Container(
                          padding: EdgeInsets.only(left:8,right:8,top:3,bottom:3),
                          decoration: styleSheet.decorationPercentage,
                          child: Text('40%',style: styleSheet.textPercentage,),
                        )
                      ]
                    ),
                  ),
                  SizedBox(height:10),
                  Container(
                    padding: EdgeInsets.only(left:10,right:10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(child: Text('Foam sneakers ',style: styleSheet.textPriceDescription, maxLines: 2,)),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color:Colors.purple,
                            borderRadius: BorderRadius.circular(50.0)
                          ),
                        )
                      ]
                    ),
                  )
                ],
              )
            )
          ],
        )
      ),
    );
  }
}