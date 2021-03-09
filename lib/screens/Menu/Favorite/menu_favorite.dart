import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:laperla/widgets/menu/favorite/card_product_menu.dart';
import 'package:laperla/widgets/menu/favorite/header_menu.dart';
class MenuFavorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
           HeaderMenu(
             titleHeader: 'Favoritos',
           ),
            Container(
                margin: EdgeInsets.only(top:130),
                width: double.infinity,
                  child:ListView.builder(
                    itemCount: 100,
                    itemBuilder:(context,int i){
                      return FadeInUp(
                        child: CardMenuProduct(
                          marginbutton: 20.0,
                          radiusTop: 20.0,
                          radiusbutton: 20.0,
                        )
                      );
                    }
                  )
            )      
          ],
        ),
      ),
    );
  }

 
}
