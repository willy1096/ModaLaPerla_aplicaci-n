import 'package:flutter/material.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
class WidgetCardList  extends StatefulWidget {
 
 const WidgetCardList({ 
    Key key,
    this.index,
    this.id,
    this.urlImage,
    this.name,
    this.description,
    this.size,
    this.percentage,
    this.price,
    this.ultimo
  }) : super(key: key);
  
  final int index;
  final int id;
  final int ultimo;
  final String urlImage;
  final String name;
  final String description;
  final String size;
  final String percentage;
  final String price;

  @override
  _StateWidgetCardList createState() => _StateWidgetCardList();
}

class _StateWidgetCardList extends State<WidgetCardList> {
  
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,'productList');
      },
      child: Container(
        margin: EdgeInsets.only(left:10,right:10,bottom: widget.index == widget.ultimo -1 ? 100 : 0),
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius:BorderRadius.circular(25.0)
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: styleSheet.marginContainer,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ClipRRect(
                    borderRadius:BorderRadius.circular(5.0) ,
                    child:Image.network(
                      widget.urlImage,
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60,
                    ),
                  ),
                  SizedBox(width:10),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(widget.name,style:styleSheet.textPrice,textAlign: TextAlign.start,),
                            SizedBox(width:10),
                            Container(
                              padding: EdgeInsets.only(left:8,right:8,top:3,bottom:3),
                              decoration: styleSheet.decorationPercentage,
                              child: Text('40%',style: styleSheet.textPercentage,),
                            )
                          ],
                        ),
                        Text(widget.description,style: styleSheet.textPriceDescription,),
                        SizedBox(height:5),
                        Text('Talla ${widget.id} ',style: TextStyle(color:styleSheet.colorGreyStrong),)
                      ],
                      
                    )
                  )
                ],
              ),
            ),
            Divider(color: styleSheet.colorDivider,),
            Container(
              margin: styleSheet.marginContainer,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          setState(() {
                            ++counter;
                          });
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration:BoxDecoration(
                            color: styleSheet.colorPurple,
                            borderRadius: BorderRadius.circular(100)
                          ),
                          child: Icon(Icons.add,size: 12,color: Colors.white,), 
                        ),
                      ),
                      SizedBox(width:10),
                      Container(
                       child: Text("$counter"), 
                      ),
                      SizedBox(width:10),
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(counter>0){
                              --counter;
                            }
                            
                          });
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration:BoxDecoration(
                            color: styleSheet.colorPurple,
                            borderRadius: BorderRadius.circular(100)
                          ),
                          child: Icon(Icons.remove,size: 12,color: Colors.white,), 
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      print("delete");
                    },
                    child: Text('Eliminar',style: TextStyle(color:styleSheet.colorGreyStrong),)
                  )
                ]
              ),
            )

          ],
        ),
      ),
    );
  }
}