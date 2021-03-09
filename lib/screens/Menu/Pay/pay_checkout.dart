import 'package:flutter/material.dart';
import 'package:laperla/widgets/menu/favorite/header_menu.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
class PayCheckout extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          // color: Colors.white,
          child: Column(
            children: <Widget>[
              Stack(
                fit: StackFit.loose,
                children: <Widget>[
                  
                  HeaderMenu(
                    titleHeader: 'Checkout',
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow:[
                        styleSheet.boxShadowCards
                      ] 
                    ),
                    margin: EdgeInsets.only(top:150.0,left:20.0,right:20.0),
                    padding: EdgeInsets.all(10.0),
                    child:Column(
                        // physics: NeverScrollableScrollPhysics(),
                        children: <Widget>[
                            SizedBox(height:20),
                            _titleCard(title:'Dirección de envío'),
                            SizedBox(height:20),
                            _address(),
                            SizedBox(height:10),
                            _addAddress(),
                            SizedBox(height:20),
                            _titleCard(title:'método de pago'),
                            SizedBox(height:20),
                            ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              separatorBuilder: (context, index) => SizedBox(height:10),
                              itemCount: 3,
                              itemBuilder: (context,int i)=>_target(i),
                            ),
                            SizedBox(height:20),
                            _addCard(context),
                            SizedBox(height:20),
                            Container(
                              margin: styleSheet.marginContainer,
                              height: 60,
                              padding: EdgeInsets.only(bottom:5),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(25.0)
                              ),
                              child: Container(
                                child: MaterialButton(
                                  elevation: 0,
                                  color: styleSheet.colorPurple,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  onPressed: (){},
                                  child: ButtonTheme(
                                    child:Text('Pagar',style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold),)
                                  ),
                                )
                              )
                            ),

                           
                           
                         
                        ],
                    ),
                     ),
                ],
              ),
             
             
            ],
          ),
        ),
      ),
    );
  }
  Widget _titleCard({@required String title}){
    return Row(
      children: <Widget>[
        Text('$title'.toUpperCase(),style: TextStyle(fontFamily:'Roboto',fontSize:18,color: styleSheet.colorDark),)
      ],
    );
  }

  Widget _address(){
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(vertical:12,horizontal: 10),
        decoration: BoxDecoration(
          color: styleSheet.colorinputs,
          border: Border.all(color:styleSheet.colorGreen),
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Address #1'.toUpperCase(),style: TextStyle(fontFamily:'Roboto',color:styleSheet.colorGreen,fontSize:16),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    flex: 12,
                    child: Text('4904 Goldner Ranch'.toUpperCase(),style: TextStyle(fontFamily:'Roboto',color:styleSheet.colorDark,fontSize:16),)
                  ),
                  _circle(),
                  
                ],
              )
            ],                        
        ),
      ),
    );
  }
  Widget _addAddress(){
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(vertical:20,horizontal: 10),
        decoration: BoxDecoration(
          color: styleSheet.colorinputs,
          border: Border.all(color:styleSheet.colorBorder),
          borderRadius: BorderRadius.circular(10.0)
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 12,
              child: Text('Agregar Nueva Dirección',style: TextStyle(fontFamily:'Roboto',color:styleSheet.colorDark,fontSize:18),)
            ),
          ],
        )
      ),
    );
  }
  Widget _target(int index){
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(left:10,right: 10,top:20,bottom: 20),
        decoration: BoxDecoration(
          color: styleSheet.colorinputs,
          border: Border.all(color: index==1 ? styleSheet.colorGreen : styleSheet.colorBorder),
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: Row(
                  children: <Widget>[
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8jPF8aL_wY6HKiHIwFxsbG2kkZRFkb2cj4g&usqp=CAU',
                      width: 40,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width:5),
                    Text('**** **** **** **5967',style: TextStyle(fontFamily:'Roboto',color:styleSheet.colorDark,fontSize:18,fontWeight: FontWeight.w400)),
                    
                    
                  ],
                ),
              ),
              _circle(),
            ],                        
        ),
      ),
    );
  }
  Widget _addCard(BuildContext context){
    return GestureDetector(
      onTap: ()=>Navigator.pushNamed(context, 'payFormAddCard'),
      child: Container(
        padding: EdgeInsets.only(left:10,right: 10,top:20,bottom: 20),
        decoration: BoxDecoration(
          color: styleSheet.colorinputs,
          border: Border.all(color:styleSheet.colorBorder),
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.credit_card),
                    SizedBox(width:5),
                    Text('Agregar Tarjeta de Debito/Credito',style: TextStyle(fontFamily:'Roboto',color:styleSheet.colorDark,fontSize:18,fontWeight: FontWeight.w400)),
                    
                  ],
                ),
              ),
            ],                        
        ),
      ),
    );
  }

  Widget _circle(){
    return Container(
      height:22,
      width:22,
      decoration: BoxDecoration(
        color: styleSheet.colorGreen,
        borderRadius: BorderRadius.circular(50.0)
      ),
    );
  }
}