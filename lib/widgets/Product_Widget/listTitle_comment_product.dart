import 'package:flutter/material.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;

class  ListComment extends StatelessWidget {
  final String title;
  final String description;
  ListComment({
    @required this.title,
    @required this.description
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(  
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(child:Icon(Icons.star,color: Colors.purpleAccent,)),
                Flexible(child:Icon(Icons.star,color: Colors.purpleAccent,)),
                Flexible(child:Icon(Icons.star,color: Colors.purpleAccent,)),
                Flexible(child:Icon(Icons.star,color: Colors.purpleAccent,)),
                Flexible(child:Icon(Icons.star,color: Colors.purpleAccent,)),
                Flexible(child:Icon(Icons.star,color: Colors.purpleAccent,)),
              ],
            ),
            Row(
              children: <Widget>[
                Flexible(child:Text('$title',style: TextStyle(color:styleSheet.colorDark,fontWeight: FontWeight.w700),)),
              ],
            ),
          ],
        ),  
        subtitle: Text('$description',style: TextStyle(color:styleSheet.colorGrey))
      );
          
        
  }
}