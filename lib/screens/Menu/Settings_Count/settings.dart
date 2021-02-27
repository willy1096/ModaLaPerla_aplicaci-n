import 'package:flutter/material.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
class MenuSettings extends StatefulWidget {
  @override
  _MenuSettingsState createState() => _MenuSettingsState();
}

class _MenuSettingsState extends State<MenuSettings> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: styleSheet.colorDark),
        title: Text('Configuración',style:TextStyle(color:styleSheet.colorGreen)),
        centerTitle: false,
        elevation: 0,
      ),
      body: Container(
        height:double.infinity,
        width:double.infinity,
        child:SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      cardExpanded(name: 'Compras',icono: Icons.shopping_cart,index:1),
                      SizedBox(width:10),
                      cardExpanded(name: 'Dirreciones',icono: Icons.map,index: 2)
                    ]
                  ),
                  SizedBox(height:10),
                  Row(
                    children: <Widget>[
                      cardExpanded(name: 'Compras',icono: Icons.shopping_cart,index:3),
                      SizedBox(width:10),
                      cardExpanded(name: 'Dirreciones',icono: Icons.map,index: 4)
                    ]
                  ),
                  SizedBox(height:10),
                  Row(
                    children: <Widget>[
                      cardExpanded(name: 'Compras',icono: Icons.shopping_cart,index:5),
                      SizedBox(width:10),
                      cardExpanded(name: 'Dirreciones',icono: Icons.map,index: 6)
                    ]
                  ),
                  SizedBox(height:10),
                  Row(
                    children: <Widget>[
                      cardExpanded(name: 'Compras',icono: Icons.shopping_cart,index:7),
                      SizedBox(width:10),
                      cardExpanded(name: 'Dirreciones',icono: Icons.map,index: 8)
                    ]
                  )
                  
                ],
              ),
            ),
          ),
        )
      ),
    );
  }

  Widget cardExpanded({String name, IconData icono,int index}){
    return Expanded(
      child: GestureDetector(
        onTap: (){
          setState(() {
            _index = index;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color:index==_index? styleSheet.colorPurple:Colors.white,
             borderRadius:BorderRadius.circular(4.0),
             boxShadow: [
              BoxShadow(
                color:Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icono,size: 30,color:index==_index?Colors.white:styleSheet.colorPurple),
              SizedBox(height:10),
              Text('$name',style: TextStyle(color:index==_index?Colors.white:styleSheet.colorPurple,fontSize: 16,fontWeight: FontWeight.w700),),
            ],
          )
        ),
      ),
    );
  }
}