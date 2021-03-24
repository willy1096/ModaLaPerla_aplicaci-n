import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:laperla/screens/Card/card_list.dart';
// import 'package:laperla/screens/Catalogue/catalogue.dart';
import 'package:laperla/screens/Product/product.dart';
// import 'package:laperla/utilities/setStatusBar.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;

class NavigatorHome extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<NavigatorHome> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
      ProductHome(),
      CardList(),
  ]; // to store nested tabs


  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = ProductHome(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child:GestureDetector(
          onTap:(){
            Navigator.pushNamed(context, 'productList');
          },
          child:SvgPicture.asset(
            'assets/wandIcon.svg',
            width:20,
            color: Colors.white,
          ),
        ), 
        // Icon(Icons.add),
        onPressed: () {},
        backgroundColor:styleSheet.colorAmarillo ,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Right Tab bar icons
             
                  MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              ProductHome(); // if user taps on this dashboard tab will be active
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.home,color: currentTab == 0 ? styleSheet.colorAmarillo : styleSheet.colorGrey,size: 27),
                          Text('Inicio',style: TextStyle(color: currentTab == 0 ? styleSheet.colorAmarillo : styleSheet.colorGrey,fontFamily: 'Roboto',fontSize: 12),
                          ),
                        ],
                      ),
                  ),
             
              
                   MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = CardList(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.shopping_cart,color: currentTab == 1 ? styleSheet.colorAmarillo : styleSheet.colorGrey,size: 27,),
                        Text('Productos',style: TextStyle(color: currentTab == 1 ? styleSheet.colorAmarillo : styleSheet.colorGrey,fontFamily: 'Roboto',fontSize: 12),
                        ),
                      ],
                    ),
                  ),
               

            ],
          ),
        ),
      ),
    );
  }
}