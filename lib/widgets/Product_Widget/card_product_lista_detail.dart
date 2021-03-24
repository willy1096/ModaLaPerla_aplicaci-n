import 'package:flutter/material.dart';
import 'package:laperla/widgets/Product_Widget/card_product_slide.dart';


class DetailProductDescription  extends StatefulWidget {
  @override
  _DetailProductDescriptionState createState() => _DetailProductDescriptionState();
}

class _DetailProductDescriptionState extends State<DetailProductDescription> {
 int indexposition = 0; 
 int gridViewCount = 2;
  @override
  Widget build(BuildContext context) {

    // var _sizeQuery = MediaQuery.of(context).size;
    // final double _desiredItemWidth = _sizeQuery.width/3;
    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder:(context, index) {
          return WidgetCardProductSlide(index:index,);
        }, 
      ),
    );
      
  }
}