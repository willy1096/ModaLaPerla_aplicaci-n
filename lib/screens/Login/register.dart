import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laperla/utilities/setStatusBar.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
import 'package:laperla/utilities/validatationForm.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _lockpassword = true;
  bool termino = false;
  SizedBox _sizedBox = SizedBox(height: 15,);
  ValidacionForm _validacionForm = new ValidacionForm();
  
   @override
  void initState() {
    getChangeStatusLila();
    super.initState();
  }
  @override
  void dispose() {
    getChangeStatusGrey();
    super.dispose();
  }

 
  
  @override
  Widget build(BuildContext context) {
    
    final double _mediaQueryHeight = MediaQuery.of(context).size.height;
    final node = FocusScope.of(context);
   
    return Scaffold(
      backgroundColor:styleSheet.colorLila,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color:styleSheet.colorLila,
        child: SafeArea(
          child: Form(
            child: SingleChildScrollView(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  SizedBox(height:20),
                  Container(
                    child: Image.asset(
                      'assets/Logo_La_Perla-w.png',
                      height: 50,
                    ),
                  ),
                  // SizedBox(height:50),
                  Container(
                    child:Text('Crear cuenta',style: TextStyle(fontFamily:'Roboto',color:styleSheet.colorPurple,fontSize: 29,fontWeight: FontWeight.w700),),
                  ),
                  Container(
                    child:Text('y empieza a comprar',style:TextStyle(fontFamily:'Roboto',color:styleSheet.colorAmarillo,fontSize: 16,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                  ),
                  SizedBox(height:_mediaQueryHeight*.05),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: TextFormField(
                            style: styleSheet.textFormField,
                              obscureText: false,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () => node.nextFocus(),
                              cursorColor: styleSheet.colorCursor,
                              decoration: InputDecoration(
                                hintStyle: styleSheet.hintStyle,
                                fillColor: Colors.white,
                                prefixStyle:styleSheet.labelStylePrefix,
                                labelStyle:styleSheet.labelStyle,
                                labelText: 'Nombre',
                                contentPadding:EdgeInsets.all(0) ,
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border:styleSheet.underlineInputBorder,
                                enabledBorder: styleSheet.underlineInputBorder,
                                focusedBorder: styleSheet.underlineInputBorderFocus,
                              ),
                          )
                        ),
                         _sizedBox,
                        Container(
                          child: TextFormField(
                              style: styleSheet.textFormField,
                              keyboardType: TextInputType.phone,
                              inputFormatters:[
                                // WhitelistingTextInputFormatter.digitsOnly,
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () => node.nextFocus(),
                              validator:_validacionForm.validateTel,
                              cursorColor: styleSheet.colorCursor,
                              decoration: InputDecoration(
                                hintStyle: styleSheet.hintStyle,
                                fillColor: Colors.white,
                                prefixStyle:styleSheet.labelStylePrefix,
                                labelStyle:styleSheet.labelStyle,
                                labelText: 'Teléfono',
                                prefixText: '+52',
                                contentPadding:EdgeInsets.all(0),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border:styleSheet.underlineInputBorder,
                                enabledBorder: styleSheet.underlineInputBorder,
                                focusedBorder: styleSheet.underlineInputBorderFocus,
                              ),
                          ),
                        ),
                        _sizedBox,
                        // Container(
                        //   child: TextFormField(
                        //       style: styleSheet.textFormField,
                        //       keyboardType: TextInputType.text,
                        //       textInputAction: TextInputAction.next,
                        //       onEditingComplete: () => node.nextFocus(),
                        //       validator:_validacionForm.validateString,
                        //       decoration: InputDecoration(
                        //         hintStyle: styleSheet.hintStyle,
                        //         fillColor: Colors.white,
                        //         prefixStyle:styleSheet.labelStylePrefix,
                        //         labelStyle:styleSheet.labelStyle,
                        //         labelText: 'Dirección',
                        //         helperText: 'Podrás editar este campo cuando desees',
                        //         suffixIcon: Icon(Icons.home,color:styleSheet.colorGrey),
                        //         contentPadding:EdgeInsets.all(0) ,
                        //         floatingLabelBehavior: FloatingLabelBehavior.always,
                        //         border:styleSheet.underlineInputBorder
                        //       ),
                        //   ),
                        // ),
                        // _sizedBox,
                        Container(
                          child: TextFormField(
                            style: styleSheet.textFormField,
                              obscureText: false,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              validator: _validacionForm.validateEmail,
                              onEditingComplete: () => node.nextFocus(),
                              cursorColor: styleSheet.colorCursor,
                              decoration: InputDecoration(
                                hintStyle: styleSheet.hintStyle,
                                fillColor: Colors.white,
                                prefixStyle:styleSheet.labelStylePrefix,
                                labelStyle:styleSheet.labelStyle,
                                labelText: 'Correo',
                                suffixIcon: Icon(Icons.mail_outline,color:Colors.white),
                                contentPadding:EdgeInsets.all(0) ,
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border:styleSheet.underlineInputBorder,
                                enabledBorder: styleSheet.underlineInputBorder,
                                focusedBorder: styleSheet.underlineInputBorderFocus,
                              ),
                          ),
                        ),
                        _sizedBox,
                        Container(
                          child: TextFormField(
                            style: styleSheet.textFormField,
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              autocorrect:false,
                              toolbarOptions: ToolbarOptions(copy:false,cut:false,paste:false,selectAll: false),
                              enableSuggestions: false,
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () => node.nextFocus(),
                              validator:_validacionForm.validatePassword,
                              cursorColor: styleSheet.colorCursor,
                              decoration: InputDecoration(
                                hintStyle: styleSheet.hintStyle,
                                fillColor: Colors.white,
                                prefixStyle:styleSheet.labelStylePrefix,
                                labelStyle:styleSheet.labelStyle,
                                suffixIcon:GestureDetector(
                                onTap: (){
                                      if(_lockpassword==true){
                                        setState(() => _lockpassword = false );
                                        
                                      }else if(_lockpassword==false){
                                        setState(() => _lockpassword = true );
                                      }
                                  },
                                  child: Icon(Icons.remove_red_eye_outlined,color:Colors.white)
                              ),
                                labelText: 'Contraseña',
                                contentPadding:EdgeInsets.all(0) ,
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border:styleSheet.underlineInputBorder,
                                enabledBorder: styleSheet.underlineInputBorder,
                                focusedBorder: styleSheet.underlineInputBorderFocus,
                              ),
                          ),
                        ),
                        _sizedBox,
                        Container(
                          child: TextFormField(
                              style: styleSheet.textFormField,
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              autocorrect:false,
                              toolbarOptions: ToolbarOptions(copy:false,cut:false,paste:false,selectAll: false),
                              enableSuggestions: false,
                              textInputAction: TextInputAction.done,
                              onEditingComplete: () => node.nextFocus(),
                              validator:_validacionForm.validatePassword,
                              cursorColor: styleSheet.colorCursor,
                              decoration: InputDecoration(
                                hintStyle: styleSheet.hintStyle,
                                fillColor: Colors.white,
                                prefixStyle:styleSheet.labelStylePrefix,
                                labelStyle:styleSheet.labelStyle,
                                
                                labelText: 'Verifica tu contaseña',
                                contentPadding:EdgeInsets.all(0),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border:styleSheet.underlineInputBorder,
                                enabledBorder: styleSheet.underlineInputBorder,
                                focusedBorder: styleSheet.underlineInputBorderFocus,
                              ),
                          ),
                        ),
                        // _sizedBox,
                       
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      termino?
                      setState(() => termino = false)
                      :
                      setState(() => termino = true);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left:20,top:0,bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(5.0),
                              color:Colors.transparent,
                              border:Border.all(color: Colors.white,width: 1.0)
                            ),
                            child: termino
                            ? 
                            Container(
                              child: FadeInLeft(
                                duration: Duration(milliseconds:250),
                                child: Icon(Icons.check,color: Colors.white,size: 18,),
                              )
                            )
                            :
                            Container(),
                          ),
                          SizedBox(width:10),
                          Text('Aceptar término de servicio',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height:20),
                  MaterialButton(
                    elevation: 1,
                    padding: EdgeInsets.all(18),
                    color: styleSheet.colorPurple,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: styleSheet.colorPurple,width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                    ),
                    minWidth: MediaQuery.of(context).size.width/1.2,
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, 'navigatorHome');
                    },
                    child: Text('Regístrate',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height:60),
                  GestureDetector(
                    onTap:(){
                      Navigator.pushReplacementNamed(context, 'login');
                    },
                    child: Container(
                      child: RichText(
                        text: TextSpan(
                          text: ' ¿Ya tienes cuenta? ',
                          style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(text: '¡Inicia Sesión!', style: TextStyle(color:styleSheet.colorAmarillo ,fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:20),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}