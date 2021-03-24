import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
import 'package:laperla/widgets/appbar.dart';
class PayFormAddCard extends StatefulWidget {
  @override
  _PayFormAddCardState createState() => _PayFormAddCardState();
}

class _PayFormAddCardState extends State<PayFormAddCard> {
  String cardNumber;
  String expiryDate;
  String cardHolderName;
  String cvvCode;
  bool isCvvFocused = false;
  Color themeColor;




  FocusNode cvvFocusNode = FocusNode();
  FocusNode cardNumberNode = FocusNode();
  FocusNode expiryDateNode = FocusNode();
  FocusNode cardHolderNode = FocusNode();
   @override
  // void initState() {
  //   super.initState();

 

  //   _cardNumberController.addListener(() {
  //     setState(() {
  //       cardNumber = _cardNumberController.text;
  //       creditCardModel.cardNumber = cardNumber;
  //       onCreditCardModelChange(creditCardModel);
  //     });
  //   });

  //   _expiryDateController.addListener(() {
  //     setState(() {
  //       expiryDate = _expiryDateController.text;
  //       creditCardModel.expiryDate = expiryDate;
  //       onCreditCardModelChange(creditCardModel);
  //     });
  //   });

  //   _cardHolderNameController.addListener(() {
  //     setState(() {
  //       cardHolderName = _cardHolderNameController.text;
  //       creditCardModel.cardHolderName = cardHolderName;
  //       onCreditCardModelChange(creditCardModel);
  //     });
  //   });

  //   _cvvCodeController.addListener(() {
  //     setState(() {
  //       cvvCode = _cvvCodeController.text;
  //       creditCardModel.cvvCode = cvvCode;
  //       onCreditCardModelChange(creditCardModel);
  //     });
  //   });
  // }

  @override
  void dispose() {
    cardHolderNode.dispose();
    cvvFocusNode.dispose();
    expiryDateNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appBarAplication(),
      body: Center(
        child: Container(
          // height: double.infinity,
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      margin: const EdgeInsets.only(left: 16, top: 100, right: 16),
                      child: TextFormField(
                        obscureText: false,
                        cursorColor: themeColor,
                        decoration: _inputDecoration(title:'',label: 'Nombre del títular'),
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
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      margin: const EdgeInsets.only(left: 16, top: 10, right: 16),
                      child: TextFormField(
                        obscureText: true,
                        toolbarOptions: ToolbarOptions(copy:false,paste:false,cut:false,selectAll:false),
                        cursorColor: themeColor,
                        onEditingComplete: () {
                          FocusScope.of(context).requestFocus(expiryDateNode);
                        },
                        decoration: _inputDecoration(title:'XXXX XXXX XXXX XXXX',label: 'Número de tarjeta'),
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        validator: (String value) {
                          // Validate less that 13 digits +3 white spaces
                          if (value.isEmpty || value.length < 16) {
                            return value;
                          }
                          return null;
                        },
                      ),
                    ),
                    Row(
                      children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          margin: const EdgeInsets.only(left: 16, top: 8, right: 16),
                          child: TextFormField(
                            cursorColor: themeColor,
                            focusNode: expiryDateNode,
                            // toolbarOptions: ToolbarOptions(copy:false,paste:false,cut:false,selectAll:false),
                            onEditingComplete: () {
                              FocusScope.of(context).requestFocus(cvvFocusNode);
                            },
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            
                            decoration: _inputDecoration(title: 'XX/XX',label: 'MM/YY'),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return value;
                              }
                              final DateTime now = DateTime.now();
                              final List<String> date = value.split(RegExp(r'/'));
                              final int month = int.parse(date.first);
                              final int year = int.parse('20${date.last}');
                              final DateTime cardDate = DateTime(year, month);
                              if (cardDate.isBefore(now) || month > 12 || month == 0) {
                                return value;
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          margin: const EdgeInsets.only(left: 16, top: 8, right: 16),
                          child: TextFormField(
                            focusNode: cvvFocusNode,
                            cursorColor:themeColor,
                            toolbarOptions: ToolbarOptions(copy:false,paste:false,cut:false,selectAll:false),
                            onEditingComplete: () {
                              FocusScope.of(context).requestFocus(cardHolderNode);
                            },
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: _inputDecoration(title: 'XXXX',label: 'CVV'),
                            onChanged: (String text) {
                              setState(() {
                                cvvCode = text;
                              });
                            },
                            validator: (value) {
                              if (value.isEmpty || value.length < 3) {
                                return value;
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:100),
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
                          child:Text('Guardar',style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold),)
                        ),
                      )
                    )
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  InputDecoration _inputDecoration({String title,String label}){
    return InputDecoration(
      hintText: '$title',
      fillColor: Colors.white,
      filled: true,
      labelText: '$label',
      
      hintStyle: TextStyle(color:Color(0xff636E7E),fontWeight:FontWeight.bold),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color:styleSheet.colorBorder,width: 10.0,
            style: BorderStyle.none
          ),
        ),
        enabledBorder: UnderlineInputBorder(    
          borderRadius: BorderRadius.circular(10.0),  
          borderSide: BorderSide(color: styleSheet.colorBorder),   
        ),  
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: styleSheet.colorBorder),
        ),
        
    );
  }
}