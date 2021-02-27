import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laperla/widgets/Product_Widget/listTitle_comment_product.dart';

class ProductComment extends StatefulWidget {
  @override
  _ProductCommentState createState() => _ProductCommentState();
}

class _ProductCommentState extends State<ProductComment> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
       backgroundColor:Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color:Colors.black),
         backgroundColor:Colors.white,
        elevation: 0,
        brightness:Brightness.light,
        title:Text('Comentarios',style: TextStyle(color:Colors.black),)
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: 220,
          itemBuilder: (BuildContext context, int index){
            return ListComment(
              title: 'Super recomendado',
              description:'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones.',
            );
          }
        ),
      ),
    );
  }
}