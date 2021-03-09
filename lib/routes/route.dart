import 'package:flutter/material.dart';
import 'package:laperla/screens/Card/card_list.dart';

import 'package:laperla/screens/Login/login.dart';
import 'package:laperla/screens/Login/register.dart';
import 'package:laperla/screens/Menu/Catalogue/catalogue.dart';
import 'package:laperla/screens/Menu/Favorite/menu_favorite.dart';
import 'package:laperla/screens/Menu/Pay/pay_add_card.dart';
import 'package:laperla/screens/Menu/Pay/pay_checkout.dart';
import 'package:laperla/screens/Menu/Pay/pay_oder.dart';
import 'package:laperla/screens/Menu/Settings_Count/settings.dart';
import 'package:laperla/screens/Product/demo.dart';
import 'package:laperla/screens/Product/product.dart';
import 'package:laperla/screens/Product/product_commet.dart';
import 'package:laperla/screens/Product/product_detail.dart';
import 'package:laperla/screens/Product/product_list.dart';
import 'package:laperla/screens/Product/product_slide.dart';
import 'package:laperla/widgets/navigation.dart';

final routes = <String, WidgetBuilder> {
  'navigatorHome' : (context) => NavigatorHome(),
  'siver':(_)=>SilverApp(),
  
  'login' : (context) => Login(),
  'register' : (context) => Register(),


  
  //CATELOGUE
  'catalogueHome' : (context) =>  CatalogueHome(),
  
  //PRODUCT
  'productHome' : (context) =>  ProductHome(),
  'productList' : (context) =>  ProductList(),
  'productDetail' : (context) =>  ProductDetail(),
  'productSlider' : (context) =>  ProductSlider(),
  'productComment' : (context) =>  ProductComment(),

  //CARD
  'cardList' : (context) => CardList(),
  //MENU
  'menuSettings' : (context) => MenuSettings(), 
  'menuFavorite' : (_) => MenuFavorite(),
  'payOrder' : (_) => PayOrder(),
  'payCheckout' : (_) => PayCheckout(),
  'payFormAddCard' : (_) => PayFormAddCard(),

  

};