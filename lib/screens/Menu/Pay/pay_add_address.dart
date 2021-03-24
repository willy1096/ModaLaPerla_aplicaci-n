

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laperla/utilities/countries.dart';

import 'package:laperla/utilities/utils.dart' as styleSheet;
import 'package:laperla/widgets/appbar.dart';
import 'package:laperla/widgets/buttom.dart';
import 'package:laperla/widgets/inputs.dart';
import 'package:laperla/widgets/snackBarMessage.dart';
import 'package:searchfield/searchfield.dart';


class PayFormAddAddress extends StatefulWidget {
  @override
  _PayFormAddAddressState createState() => _PayFormAddAddressState();
}

class _PayFormAddAddressState extends State<PayFormAddAddress> {
  final _searchController = TextEditingController();
  final _searchcontriesController = TextEditingController();
  List<String> countries = [];


  @override
  void dispose() {
    _searchController.dispose();
    _searchcontriesController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {

    var _margin  =  EdgeInsets.only(left: 0, top: 0, right: 0,bottom: 5);
    var _margin2  =  EdgeInsets.only(left: 0, top: 0, right: 0,bottom: 0);


    return Scaffold(
      
      appBar: appBarAplication(),
      body: Center(
        child: Theme(
           data: Theme.of(context).copyWith(
            accentColor: styleSheet.colorPurple
          ),
          child: ListView(
          children: <Widget>[
              ElevatedButton(
                onPressed:(){
                  ScaffoldMessenger.of(context).showSnackBar(snackBarMessage());
                },
                child:Text('mmm')
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text('México',style: TextStyle(color: styleSheet.colorDark,fontWeight: FontWeight.w700),)
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin:_margin,
                child: SearchField(
                  searchInputDecoration: setInputDecoration(label:'Región',title: ''),
                  suggestions: estados,
                  controller: _searchController,
                  initialValue: estados[1],
                  maxSuggestionsInViewPort: 3,
                  itemHeight: 45,
                  onTap: (x) {
                    var m = selectRegion(_searchController.text);
                    setState(()=> countries = m );
                  },
                ),
              ),
              Container(
                margin:_margin,
                child: SearchField(
                  searchInputDecoration: setInputDecoration(label:'Región',title: ''),
                  suggestions: countries,
                  controller: _searchcontriesController,
                  maxSuggestionsInViewPort: 3,
                  itemHeight: 45,
                  onTap: (x) {
                  },
                ),
              ),
              Container(
                margin:_margin,
                child: TextFormField(
                  obscureText: false,
                  // cursorColor: themeColor,
                  decoration: setInputDecoration(title:'',label: 'Nombre del títular'),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  validator: (String value) {
                    if (value.isEmpty || value.length < 5) {
                      return value;
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin:_margin,
                child: TextFormField(
                  obscureText: false,
                  decoration: setInputDecoration(title:'',label: 'Apellido'),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  validator: (String value) {
                    if (value.isEmpty || value.length < 5) {
                      return value;
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin:_margin,
                child: TextFormField(
                  // style: styleSheet.textFormField,
                  keyboardType: TextInputType.phone,
                  inputFormatters:[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textInputAction: TextInputAction.next,
                  decoration: setInputDecoration(title:'',label: 'Teléfono',prefix:'+52'),
                ),
              ),
              Container(
                margin:_margin2,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: setInputDecoration(title:'',label: 'Dirección',),
                ),
              ),
              Container(
                margin: _margin,
                child: Row(
                  children: [
                    Text('Calle y Número',style: TextStyle(color:Colors.grey,fontSize: 10),)
                  ],
                ),
              ),
              Container(
                margin:_margin,
                child: TextFormField(
                  inputFormatters:[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: setInputDecoration(title:'',label: 'Código postal',),
                ),
              ),
              Container(
                margin:_margin2,
                child: TextFormField(
                  maxLines: 3,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: setInputDecoration(title:'',label: 'Referencias',),
                ),
              ),
              Container(
                margin: _margin,
                child: Row(
                  children: [
                    Text('Ejemplo: Edificio de color blanco',style: TextStyle(color:Colors.grey,fontSize: 10),)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20),
                child:MyButton(
                  nameButton: 'Guardar',
                  callbackAction:(){
                  
                  }
                )
              )
                    
          ],
      ),
        )),
    );
  }

  

  dynamic selectRegion(String name){
    print(name);
    switch(name){
      case 'Baja California':
          countries = ['uno','dos'];
        return countries;
        break;
      default:
       return countries = [];

    }
  }
}

