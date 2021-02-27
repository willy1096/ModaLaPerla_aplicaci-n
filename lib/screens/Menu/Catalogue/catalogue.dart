import 'package:flutter/material.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;

class CatalogueHome extends StatelessWidget {
  

  final List urls = [
    'https://cdn.pixabay.com/photo/2017/07/31/11/33/people-2557483_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/08/06/20/08/people-2595833_960_720.jpg',
    'https://cdn.pixabay.com/photo/2015/09/06/00/46/yellow-926728_960_720.jpg',
    'https://cdn.pixabay.com/photo/2015/12/08/05/58/ice-skates-1082514_960_720.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color:styleSheet.colorDark),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        title: Text('Shopping Apps',style:TextStyle(color:styleSheet.colorGreen)),
        centerTitle: true,
        elevation: 0,
      ),
      // endDrawer: (),
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        child:ListView.builder(
          itemCount: 4,
          itemBuilder:(context, int i ) => CardCatalogue(
            idcategory: i,
            name: 'Hola $i',
            position: i%2==0 ? 'right' : 'left',
            url:urls[i],
          )
        )
      )
    );
  }
}

class CardCatalogue extends StatelessWidget{
  final int idcategory;
  final String url;
  final String name;
  final String position;
  

  CardCatalogue({
    this.url,
    this.name,
    this.idcategory,
    this.position
  });
  final EdgeInsets _paddingcard =  EdgeInsets.only(left:30,right:30);
  @override
  Widget build(BuildContext context) {
      return Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .25,
          decoration: BoxDecoration(
            image: DecorationImage(
              image:NetworkImage(this.url),
              fit: BoxFit.cover,
            )
          ),
          child: this.position == 'right' ? cardRight() : cardLeft()
      );
    }

    Widget cardRight(){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: _paddingcard,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(this.name.toUpperCase(),style: TextStyle(fontSize:30,color:styleSheet.colorPurple,fontWeight: FontWeight.bold ),),
              ],
            ),
          ),
            Container(
              padding: _paddingcard,
            child: Row(
              children: <Widget>[
                Flexible(child: Text('Fashion Collections',style: TextStyle(fontSize:30,color:Colors.white))),
              ],
            ),
          ),
          Container(
              padding: _paddingcard,
            child: Row(
              children: <Widget>[
                Flexible(child: Text('Lorem ipsum dolor sit amet, consectetur ipsum dolor sit amet, consectetur dolor',style: TextStyle(height: 1.5,color: Color.fromARGB(200, 255, 255, 255)),)),
              ],
            ),
          ),
          Container(
            padding: _paddingcard,
            child:Row(
              children: <Widget>[
                ButtonTheme(
                  buttonColor: Colors.yellow,
                  child: MaterialButton(
                    color:  styleSheet.colorPurple,
                    onPressed: (){},
                    child: Text('VER PRODUCTOS',style: TextStyle(color:Colors.white),),
                  )
                ),
                SizedBox(width:10),
                ButtonTheme(
                  child: MaterialButton(
                    shape:RoundedRectangleBorder(
                      side: BorderSide(color: styleSheet.colorPurple,width: 2.0)

                      // top: BorderSide(color:Color(0xffBFBA0C)),
                      // bottom: BorderSide(color:Color(0xffBFBA0C)),
                      // left: BorderSide(color:Color(0xffBFBA0C)),
                      // right: BorderSide(color:Color(0xffBFBA0C)),
                    ),
                    onPressed: (){},
                    child: Text('MAS POPULAR',style: TextStyle(color:Colors.white)),
                  )
                )
              ],
            )
          )
          
        ],
      );
    }

    Widget cardLeft(){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: _paddingcard,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(this.name.toUpperCase(),style: TextStyle(fontSize:30,color:  styleSheet.colorGreen,fontWeight: FontWeight.bold ),),
              ],
            ),
          ),
            Container(
              padding: _paddingcard,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Flexible(child: Text('Fashion Collections',style: TextStyle(fontSize:30,color:Colors.white))),
                ],
            ),
          ),
          Container(
            padding: _paddingcard,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Flexible(child: Text('Lorem ipsum dolor sit amet, consectetur ipsum dolor sit amet, consectetur dolor',style: TextStyle(height: 1.5,color: Color.fromARGB(200, 255, 255, 255)),)),
              ],
            ),
          ),
          Container(
            padding: _paddingcard,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ButtonTheme(
                  buttonColor: Colors.yellow,
                  child: MaterialButton(
                    color:styleSheet.colorGreen,
                    onPressed: (){},
                    child: Text('VER PRODUCTOS',style: TextStyle(color:Colors.white),),
                  )
                ),
                SizedBox(width:10),
                ButtonTheme(
                  child: MaterialButton(
                    shape:RoundedRectangleBorder(
                       side: BorderSide(color:styleSheet.colorGreen,width: 2.0)
                      // top: BorderSide(color:Color(0xff800DB0)),
                      // bottom: BorderSide(color:Color(0xff800DB0)),
                      // left: BorderSide(color:Color(0xff800DB0)),
                      // right: BorderSide(color:Color(0xff800DB0)),
                    ),
                    onPressed: (){},
                    child: Text('MAS POPULAR',style: TextStyle(color:Colors.white)),
                  )
                )
              ],
            )
          )
        ],
      );
    }
    
}