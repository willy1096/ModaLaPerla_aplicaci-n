import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:laperla/utilities/setStatusBar.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
class MyEndDrawerMenu extends StatefulWidget {
  @override
  _MyEndDrawerMenuState createState() => _MyEndDrawerMenuState();
}

class _MyEndDrawerMenuState extends State<MyEndDrawerMenu> {
  // double _value = 1;
  // int _valor = 1;
  String address= 'Calle 12 x 17 y 19 #192 casas de dos pisos en la mera esquina';
  EdgeInsets _padding = EdgeInsets.only(top:15,bottom:15);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 0,
        child: Container(
          color: styleSheet.colorBackground,
          child: Column(
            
            children: <Widget>[
              SafeArea(
                child:Container(
                  height: 150,
                  child:DrawerHeader(
                    padding: EdgeInsets.all(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                       
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 61.0,
                              height: 61.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                        'https://www.westernunion.com/content/dam/wu/jm/responsive/send-money-in-person-from-jamaica-resp.png',
                                    )
                                )
                              )
                            ),
                            Flexible(child: Text('William Fernando Cach Cruz',style: TextStyle(color:styleSheet.colorDark),maxLines: 2,)),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left:10,right:10),
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                fit: FlexFit.loose,
                                child: Text('$address' +'...',style: TextStyle(color:styleSheet.colorDark),)
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                )
              ),
              Expanded(
                flex: 9,
                child: ListView(
                  padding: EdgeInsets.all(0.0),
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left:10,right: 10),
                      child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                             
                              _gestureDetectorRoute(
                                icon:Icons.book,
                                title: 'Catalogo',
                                routeName:'catalogueHome'
                              ),
                              _gestureDetectorRoute(
                                icon:Icons.favorite,
                                title: 'Favoritos',
                                routeName: 'menuFavorite',
                              ),
                              _gestureDetectorRoute(
                                icon:Icons.notifications_active,
                                title: 'Notificaciones',
                                routeName:  'menuNotification',
                              ),
                              _gestureDetectorRoute(
                                icon:Icons.shopping_cart,
                                title: 'Mi carrito',
                                routeName: 'payOrder'
                              ),
                              _gestureDetectorRoute(
                                icon:Icons.account_box,
                                title: 'Cuenta',
                                routeName: 'login'
                              ),
                              _gestureDetectorRoute(
                                icon:Icons.settings_applications,
                                title: 'Configuraciones',
                                routeName:'menuSettings'
                              ),
                                  
                            ],
                          ),
                          
                        ]
                      )
                    ),

                   
                  ],
                )
              ),
              
              Expanded(
                  child:Container(
                    child:  MaterialButton(
                      elevation: 1,
                      // padding: EdgeInsets.all(16),
                      // color: Colors.transparent,
                      height: 40,
                      minWidth: MediaQuery.of(context).size.width/1.2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(0),bottomRight:Radius.circular(0))
                      ),
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, 'navigatorHome');
                      },
                      child:Row(
                        children: <Widget>[
                          Icon(Icons.exit_to_app),
                          Text('Cerrar Sesión')
                        ]
                      ),
                    ),
                  )
              ),
              SizedBox(height:30)
            ],
          ),
        )
    );
  }

  Widget _gestureDetectorRoute({String routeName, String title,IconData icon }){
    return  InkWell(
      splashColor: Colors.white,
      highlightColor: Colors.white24  ,
      onTap:(){
        Navigator.pushNamed(context, '$routeName');
        getChangeStatusTransparent();
      } ,
      child:Padding(
        padding:_padding,
        child: Row(
          children: <Widget>[
            Icon(icon,color: styleSheet.colorPurple),
            SizedBox(width:5),
            Text('$title',style: TextStyle(fontSize:15,fontFamily:'Roboto',color:styleSheet.colorPurple,fontWeight: FontWeight.w600,)),
          ],
        ),
      )
    );
  }
 
}