import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
import 'package:laperla/utilities/validatationForm.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _lockpassword = true;
  SizedBox _sizedBox = SizedBox(height: 15,);
  ValidacionForm _validacionForm = new ValidacionForm();
  
  @override
  Widget build(BuildContext context) {

    final double _mediaQueryHeight = MediaQuery.of(context).size.height;
    final node = FocusScope.of(context);
   
    return Scaffold(
      backgroundColor:Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color:Colors.white,
        child: SafeArea(
          child: Form(
            child: SingleChildScrollView(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  SizedBox(height:50),
                  Container(
                    child:Text('Crear cuenta',style: TextStyle(fontFamily:'DM_Sans',color:styleSheet.colorPurple,fontSize: 29,fontWeight: FontWeight.w700),),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child:Text('Crea tu cuenta y empieza a comprar',style:TextStyle(fontFamily:'DM_Sans',color:styleSheet.colorGreen,fontSize: 16,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
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
                              decoration: InputDecoration(
                                hintStyle: styleSheet.hintStyle,
                                fillColor: Colors.white,
                                prefixStyle:styleSheet.labelStylePrefix,
                                labelStyle:styleSheet.labelStyle,
                                filled: true,
                                labelText: 'Nombre',
                                contentPadding:EdgeInsets.all(0) ,
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border:styleSheet.underlineInputBorder
                              ),
                          )
                        ),
                         _sizedBox,
                        Container(
                          child: TextFormField(
                              style: styleSheet.textFormField,
                              keyboardType: TextInputType.phone,
                              inputFormatters:[WhitelistingTextInputFormatter.digitsOnly],
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () => node.nextFocus(),
                              validator:_validacionForm.validateTel,
                              decoration: InputDecoration(
                             
                                hintStyle: styleSheet.hintStyle,
                                fillColor: Colors.white,
                                prefixStyle:styleSheet.labelStylePrefix,
                                labelStyle:styleSheet.labelStyle,
                                filled: true,
                                labelText: 'Teléfono',
                                hintText: 'Ingrese su número telefónico',
                                prefixText: '+52',
                                contentPadding:EdgeInsets.all(0),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border:styleSheet.underlineInputBorder
                              ),
                          ),
                        ),
                        _sizedBox,
                        Container(
                          child: TextFormField(
                              style: styleSheet.textFormField,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () => node.nextFocus(),
                              validator:_validacionForm.validateString,
                              decoration: InputDecoration(
                                hintStyle: styleSheet.hintStyle,
                                fillColor: Colors.white,
                                prefixStyle:styleSheet.labelStylePrefix,
                                labelStyle:styleSheet.labelStyle,
                                filled: true,
                                labelText: 'Dirección',
                                helperText: 'Podrás editar este campo cuando desees',
                                suffixIcon: Icon(Icons.home,color:styleSheet.colorGrey),
                                contentPadding:EdgeInsets.all(0) ,
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border:styleSheet.underlineInputBorder
                              ),
                          ),
                        ),
                        _sizedBox,
                        Container(
                          child: TextFormField(
                            style: styleSheet.textFormField,
                              obscureText: false,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              validator: _validacionForm.validateEmail,
                              onEditingComplete: () => node.nextFocus(),
                              decoration: InputDecoration(
                                hintStyle: styleSheet.hintStyle,
                                fillColor: Colors.white,
                                prefixStyle:styleSheet.labelStylePrefix,
                                labelStyle:styleSheet.labelStyle,
                                filled: true,
                                labelText: 'Correo',
                                suffixIcon: Icon(Icons.mail_outline,color:styleSheet.colorGrey),
                                contentPadding:EdgeInsets.all(0) ,
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border:styleSheet.underlineInputBorder
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
                                  child: Icon(Icons.remove_red_eye,color:styleSheet.colorGrey,)
                              ),
                                filled: true,
                                labelText: 'Contraseña',
                                contentPadding:EdgeInsets.all(0) ,
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border:styleSheet.underlineInputBorder
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
                              decoration: InputDecoration(
                                hintStyle: styleSheet.hintStyle,
                                fillColor: Colors.white,
                                prefixStyle:styleSheet.labelStylePrefix,
                                labelStyle:styleSheet.labelStyle,
                                filled: true,
                                
                                labelText: 'Verifica tu contaseña',
                                contentPadding:EdgeInsets.all(0),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border:styleSheet.underlineInputBorder
                              ),
                          ),
                        ),
                        _sizedBox,
                       
                      ],
                    ),
                  ),
                  SizedBox(height:20),
                  MaterialButton(
                    elevation: 1,
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    height: 30,
                    minWidth: MediaQuery.of(context).size.width/1.2,
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, 'navigatorHome');
                    },
                    child: Text('Registrar'),
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
                          style: TextStyle(color:styleSheet.colorDark,fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(text: '¡Inicia Sesión!', style: TextStyle(color:styleSheet.colorGreen ,fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:50),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}