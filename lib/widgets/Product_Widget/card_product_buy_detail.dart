import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
import 'package:laperla/widgets/Product_Widget/listTitle_comment_product.dart';

class DetailProductBuy  extends StatefulWidget {
  @override
  _DetailProductBuyState createState() => _DetailProductBuyState();
}

class _DetailProductBuyState extends State<DetailProductBuy> {
  FixedExtentScrollController fixedExtentScrollController =
    new FixedExtentScrollController();
  int itemSelect; 
  int itemSelecColor; 
  int itemSelecCantidad; 
  String itemSelecCantidadText; 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: RichText(
            text: TextSpan(
              text: 'Estimación de entrega',
              style: TextStyle(color:styleSheet.colorGrey),
              children: <TextSpan>[
                TextSpan(text: ' 10', style: TextStyle(color:styleSheet.colorAmarillo,fontWeight: FontWeight.bold)),
                TextSpan(text: ' días',style: TextStyle(color:styleSheet.colorAmarillo,fontWeight: FontWeight.bold)),
              ],
            ),
          )
        ),
         Container(
          width:double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            color:Colors.white,
            boxShadow: [
              styleSheet.boxShadowCards
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child:MaterialButton(
            padding: EdgeInsets.all(13),
            onPressed: ()=>_showMaterialModalBottomSheet(context),
            child: Column(
              children: <Widget>[
                itemSelecCantidad == null ?
                Text("Seleccionar cantidad",style: TextStyle(color: styleSheet.colorDark,fontWeight: FontWeight.w600),)
                :
                Text("$itemSelecCantidadText",style: TextStyle(color: styleSheet.colorDark,fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ),
        _title(title:'Tallas'),
        Container(
          margin: EdgeInsets.all(10),
          height: 35,
          child: _itemSize(sizeitem: '23'),
        ),
        _title(title:'Colores'),
        Container(
          height: 33,
          child:_coloritem()
        ),
        Container(
            margin: EdgeInsets.only(left:5,right:10,top:30,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  color: styleSheet.colorPurple,
                  minWidth: 0,
                  padding: EdgeInsets.only(left:50,right:50,),
                  height: 40,
                  onPressed: (){},
                  child: Text('Comprar ahora'.toUpperCase(),style: TextStyle(color:Colors.white,fontFamily:'Montserrat',fontWeight: FontWeight.w700,fontSize: 15)),
                ),
              ],
            ),
          ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text('Fligt Report',style:TextStyle(color:styleSheet.colorDark,fontWeight: FontWeight.w700,fontSize: 20,fontFamily: 'Montserrat'),
        )),
        Container(
          margin: EdgeInsets.only(left: 10,right:10),
          child: Text(
            'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.',
              style: TextStyle(
                color:styleSheet.colorGrey,
                fontWeight: FontWeight.w400,
                fontSize: 16,
                fontFamily: 'Roboto',
                letterSpacing: 0.5
              )
            ),
        ),
        SizedBox(height:30),
       
        Container(
          height: MediaQuery.of(context).size.height*0.55,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left:12,bottom: 0),
                child: Text('Comentarios',style:TextStyle(color:styleSheet.colorDark,fontWeight: FontWeight.w700,fontSize: 20,fontFamily: 'Montserrat'))
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder:(BuildContext context,int index){
                    return ListComment(
                      title: 'Super recomendado',
                      description:'Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones.',
                    );
                  }
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:Colors.white,
                  boxShadow: [
                    styleSheet.boxShadowCards
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child:MaterialButton(
                  padding: EdgeInsets.all(13),
                  onPressed: ()=>Navigator.pushNamed(context, 'productComment'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Expanded(child: Text('Ver Comentarios',style: TextStyle(color: styleSheet.colorDark,fontWeight: FontWeight.w600,),textAlign: TextAlign.center,)),
                      Icon(Icons.keyboard_arrow_right_sharp)
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ),
        SizedBox(height:1),
      ],
    );
  }
  Widget _title({@required String title}){
    return  Container(
      margin: EdgeInsets.all(10),
      child: Text('$title',style:TextStyle(color:styleSheet.colorDark,fontWeight: FontWeight.w700,fontSize:14,fontFamily: 'Roboto'))
    );
  }
  Future _showMaterialModalBottomSheet(context){
    String _unidad = 'Unidades';
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withOpacity(0.2),
      
      builder: (BuildContext bc,){
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
              color:Colors.white,
          ),
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            separatorBuilder: (context, index) => Divider(color: styleSheet.colorDivider,endIndent: 100,indent: 100,),
            itemCount: 10,
            itemBuilder:(context, int i){
              int unidad = i;
              unidad = i +1;
              return 
                 Wrap(
                  alignment: WrapAlignment.center,
                    children: <Widget>[
                    new ListTile(
                      horizontalTitleGap: 0,
                      dense: true,
                      title:i==0?Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('$unidad Unidad',style: TextStyle(color:styleSheet.colorDark,fontWeight: FontWeight.w600),),
                        ],
                      ):Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('$unidad $_unidad',style: TextStyle(color:styleSheet.colorDark,fontWeight: FontWeight.w600)),

                        ],
                      ),
                      onTap: (){
                        setState(() {
                          itemSelecCantidad = unidad;
                          i==0 ? itemSelecCantidadText = '$unidad Unidad': itemSelecCantidadText = '$unidad $_unidad';
                        });
                        Navigator.pop(context);
                      }          
                    ),
                  ],
                );
            }
          ),
        );
      }
    );
   
  }


   Widget _itemSize({@required String sizeitem}){
     return ListView.builder(
       scrollDirection: Axis.horizontal,
      //  physics: BouncingScrollPhysics(),
       shrinkWrap: true,
       itemCount: 50,
       itemBuilder: (BuildContext context, int i){
         return InkWell(
            onTap:(){
              setState(() {
                itemSelect = i;
                print("$itemSelect === $i");
              });
            },
            child: Container(
                width: 35,
                padding: EdgeInsets.all(9),
                margin: EdgeInsets.only(right:8),
                child:Text('$i',style:TextStyle(color:itemSelect==i?Colors.white:Color(0xffBCBEC0),fontWeight: FontWeight.w700,fontFamily: 'Montserrat'),textAlign: TextAlign.center,),
                decoration: BoxDecoration(
                  color: itemSelect==i ? styleSheet.colorPurple : Color.fromARGB(70,179,179,179),
                  borderRadius: BorderRadius.circular(0)
                ),
            ),
          );
       }
    );
   }

   Widget _coloritem(){
     var rng = new Random();
     return ListView.builder(
       scrollDirection: Axis.horizontal,
      //  physics: BouncingScrollPhysics(),
       shrinkWrap: true,
       itemCount: 5,
       itemBuilder: (BuildContext context, int i){
         return InkWell(
            onTap:(){
              setState(() {
                itemSelecColor = i;
              });
            },
            child:  Container(
              margin: EdgeInsets.only(left:i==0?10:3),
              height:33,
              width:33,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(50.0),
                color:Color.fromARGB(255, rng.nextInt(255), rng.nextInt(255), rng.nextInt(255)),
                
              ),
              child:  itemSelecColor==i?Icon(Icons.check,color:styleSheet.colorinfo):Text(''),
            )
          );
       }
    );
   }
}