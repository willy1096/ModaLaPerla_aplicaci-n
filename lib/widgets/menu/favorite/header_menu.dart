import 'package:flutter/material.dart';

class  HeaderMenu extends StatelessWidget {
  final String titleHeader;
  HeaderMenu({
    @required this.titleHeader
  });
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: <Widget>[
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors:[
                Color.fromARGB(255,123, 10, 173),
                Color.fromARGB(255, 193, 188, 59),
              ]
            ),
          ),
          child: Center(
            child: Text('$titleHeader',style: TextStyle(color:Colors.white,fontFamily:'Roboto',fontWeight:FontWeight.w700,fontSize: 20),),
          ),
        ),
        
        _positionedCircle(
          leftPosition: -30.0,
          topPosition: 90.0,
          rightPosition:null,
          bottomPosition: null,
          colorCicle: Color.fromARGB(127,191, 186, 56),
          hightCicle: 100.0,
          widhtCircle: 100.0,
        ),
        _positionedCircle(
          leftPosition: 30.0,
          topPosition: 10.0,
          rightPosition:null,
          bottomPosition: null,
          colorCicle: Color.fromARGB(127,191, 186, 56),
          hightCicle: 30.0,
          widhtCircle: 30.0,
        ),
        _positionedCircle(
          leftPosition: MediaQuery.of(context).size.width*0.45,
          topPosition: 10.0,
          rightPosition:null,
          bottomPosition: null,
          colorCicle: Color.fromARGB(80,123, 10, 173),
          hightCicle: 30.0,
          widhtCircle: 30.0,
        ),
        _positionedCircle(
          leftPosition: null,
          topPosition: -50.0,
          rightPosition:-20.0,
          bottomPosition: null,
          colorCicle: Color.fromARGB(50,191, 186, 56),
          hightCicle: 130.0,
          widhtCircle: 130.0,
        ),
        SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 15),
              child: Row(
                children: <Widget>[
                  // Platform.isAndroid?
                  // Icon(Icons.arrow_back,color: Colors.white,size: 35,)
                  // :
                  // Icon(Icons.arrow_back_ios,color: Colors.white,size: 35,)
                ],
              ),
        
            ),
        ),
      ],
    );
  }
  Widget _positionedCircle({
    @required leftPosition,
    @required rightPosition,
    @required topPosition,
    @required bottomPosition,
    @required Color colorCicle,
    @required double hightCicle,
    @required double widhtCircle  
  }){
    return Positioned(
      left: leftPosition,
      right: rightPosition,
      top: topPosition,
      bottom: bottomPosition,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color:colorCicle
        ),
        margin: EdgeInsets.only(top:40),
        height: hightCicle,
        width: widhtCircle,
      ),
    );
  }  
}