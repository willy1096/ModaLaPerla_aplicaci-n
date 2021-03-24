import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
class MyEndDrawerFilter extends StatefulWidget {
  @override
  _MyEndDrawerFilterState createState() => _MyEndDrawerFilterState();
}

class _MyEndDrawerFilterState extends State<MyEndDrawerFilter> {
  double _value = 1;
  int _valor = 1;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
        elevation: 0,
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              SafeArea(
                child:Container(
                  height: 50,
                  child:DrawerHeader(
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:10,left:10.0),
                          child: Text('Categoría',style: TextStyle(fontSize:20),),
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
                flex: 10,
                child: ListView(
                  children: <Widget>[
                    Container(
                      // margin: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                             _butttonfilter(name: 'Mujer'),
                             _butttonfilter(name: 'Niña'),
                             _butttonfilter(name: 'Hombre'),
                             _butttonfilter(name: 'Niño'),
                            ],
                          ),
                          Expanded(
                            child: Table(
                              border: TableBorder(
                                left:  BorderSide(width: 1, color:Color(0xffE9ECF4), style: BorderStyle.solid),
                                verticalInside:  BorderSide(width: 1, color:Color(0xffE9ECF4), style: BorderStyle.solid),
                              ),
                              children: [
                               _tableRow,
                               _tableRow,
                               _tableRow,
                               _tableRow,
                               
                              ],
                            ),
                          ),
                        ]
                      )
                    ),

                   
                    Container(
                      margin: EdgeInsets.only(left:10,right: 10),
                      child: Row(
                        children: <Widget>[
                          Text('Tallas')
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MaterialButton(
                          color: styleSheet.colorPurple,
                          minWidth: 0,
                          padding: EdgeInsets.only(left:10,right:10),
                          height: 30,
                          onPressed: (){},
                          child: Text('5',style: TextStyle(color:Colors.white,fontFamily:'Montserrat',fontWeight: FontWeight.w700,fontSize: 12)),
                        ),
                        MaterialButton(
                          color: styleSheet.colorAmarillo,
                          minWidth: 0,
                          padding: EdgeInsets.only(left:10,right:10),
                          height: 30,
                          onPressed: (){},
                          child: Text('6',style: TextStyle(color:Colors.white,fontFamily:'Montserrat',fontWeight: FontWeight.w700,fontSize: 12)),
                        ),
                        MaterialButton(
                          color: styleSheet.colorAmarillo,
                          minWidth: 0,
                          padding: EdgeInsets.only(left:10,right:10),
                          height: 30,
                          onPressed: (){},
                          child: Text('7',style: TextStyle(color:Colors.white,fontFamily:'Montserrat',fontWeight: FontWeight.w700,fontSize: 12)),
                        ),
                        MaterialButton(
                          color: styleSheet.colorAmarillo,
                          minWidth: 0,
                          padding: EdgeInsets.only(left:10,right:10),
                          height: 30,
                          onPressed: (){},
                          child: Text('8',style: TextStyle(color:Colors.white,fontFamily:'Montserrat',fontWeight: FontWeight.w700,fontSize: 12)),
                        ),
                      ],
                    ),
                    SizedBox(height:50),
                    Container(
                      margin: EdgeInsets.only(left:10,right: 10),
                      child: Row(
                        children: <Widget>[
                          Text('Colores')
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: BorderSide(color: Colors.white)
                                ),
                                color: styleSheet.colorPurple,
                                minWidth: 30,
                                padding: EdgeInsets.only(left:10,right:10),
                                height: 30,
                                onPressed: (){},
                                child:Container(),
                              ),
                              Text('Azul',style: TextStyle(color:Colors.black,fontFamily:'Montserrat',fontWeight: FontWeight.w700,fontSize: 12))
                          ],
                        ),
                        
                        Column(
                          children: <Widget>[
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: BorderSide(color: Colors.white)
                                ),
                                color: styleSheet.colorPurple,
                                minWidth: 30,
                                padding: EdgeInsets.only(left:10,right:10),
                                height: 30,
                                
                                onPressed: (){},
                                child:Container(),
                              ),
                              Text('Azul',style: TextStyle(color:Colors.black,fontFamily:'Montserrat',fontWeight: FontWeight.w700,fontSize: 12))
                          ],
                        ),
                         Column(
                          children: <Widget>[
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: BorderSide(color: Colors.white)
                                ),
                                color: styleSheet.colorPurple,
                                minWidth: 30,
                                padding: EdgeInsets.only(left:10,right:10),
                                height: 30,
                                
                                onPressed: (){},
                                child:Container(),
                              ),
                              Text('Azul',style: TextStyle(color:Colors.black,fontFamily:'Montserrat',fontWeight: FontWeight.w700,fontSize: 12))
                          ],
                        ),
                         Column(
                          children: <Widget>[
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: BorderSide(color: Colors.white)
                                ),
                                color: styleSheet.colorPurple,
                                minWidth: 30,
                                padding: EdgeInsets.only(left:10,right:10),
                                height: 30,
                                
                                onPressed: (){},
                                child:Container(),
                              ),
                              Text('Azul',style: TextStyle(color:Colors.black,fontFamily:'Montserrat',fontWeight: FontWeight.w700,fontSize: 12))
                          ],
                        ),
                        Column(
                          children: <Widget>[
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: BorderSide(color: Colors.white)
                                ),
                                color: styleSheet.colorPurple,
                                minWidth: 30,
                                padding: EdgeInsets.only(left:10,right:10),
                                height: 30,
                                
                                onPressed: (){},
                                child:Container(),
                              ),
                              Text('Azul',style: TextStyle(color:Colors.black,fontFamily:'Montserrat',fontWeight: FontWeight.w700,fontSize: 12))
                          ],
                        ),
                        
                      ],
                    ),
                    SizedBox(height:50),
                    Container(
                      margin: EdgeInsets.only(left:10,right: 10),
                      child: Row(
                        children: <Widget>[
                          Text('Precio')
                        ],
                      ),
                    ),
                       Container(
                        margin:EdgeInsets.only(left:0,right:10),
                        child: Slider(
                          activeColor: Colors.blueAccent[700],
                          min: 1,
                          max: 1000,
                          divisions: 100,
                          label: "\$ $_valor",
                          value:_value,
                          onChanged: (value) {
                           setState(() {
                             _value = value;
                             _valor = _value.round();

                           });
                          },
                        ),
                      ),
                  ],
                )
              )
            ],
          ),
        )
    );
  }
  var _tableRow = TableRow(
      children: [
      Container(
       padding: EdgeInsets.only(top:5,bottom:5,right: 0,left: 0 ),
        decoration: BoxDecoration(
          border:Border(
            bottom: BorderSide(color:Color(0xffE9ECF4),width: 1.0),
          )
        ),
        margin: EdgeInsets.only(left:5),
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius:BorderRadius.circular(0.0),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2017/07/31/15/06/boot-2558324_960_720.jpg',fit: BoxFit.cover,
                    height: 30,
                    width: 30,
                )
              ),
              Text('Casual')
          ],
        ),
      ), 
        Container(
        padding: EdgeInsets.only(top:5,bottom:5,right: 0,left: 0 ),
        decoration: BoxDecoration(
          border:Border(
            bottom: BorderSide(color:Color(0xffE9ECF4),width: 1.0),
          )
        ),
        margin: EdgeInsets.only(right:0),
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius:BorderRadius.circular(0.0),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2017/07/31/15/06/boot-2558324_960_720.jpg',fit: BoxFit.cover,
                    height: 30,
                    width: 30,
                )
              ),
              Text('Casual')
          ],
        ),
      ),
    
  ]);

  
  Widget _butttonfilter({String name}){
    return  Container(
      margin: EdgeInsets.symmetric(vertical:0,horizontal:10),
      child: MaterialButton(
        color:Color.fromRGBO(248, 248, 248, 1),
        highlightColor:Color.fromRGBO(248, 248, 248, 1),
        minWidth: 75,
        // padding: EdgeInsets.only(left:5,right:5),
        height: 40,
        onPressed: (){},
        child: Text("$name",style: TextStyle(color:Colors.black,fontFamily:'Montserrat',fontWeight: FontWeight.w700,fontSize: 10)),
      ),
    );
  }
  
  
}