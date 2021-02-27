import 'package:flutter/material.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _lockpassword = true;
    
  @override
  Widget build(BuildContext context) {
    final _node = FocusScope.of(context);
    final double _mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: styleSheet.colorBackground,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor:styleSheet.colorBackground,
        elevation: 0,
        title: Text('',style:TextStyle(color:styleSheet.colorDark)),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color:styleSheet.colorBackground,
        child: SafeArea(
          child: Form(
            child: SingleChildScrollView(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  SizedBox(height:50),
                  Container(
                    child: Image.network(
                      'https://cdn11.bigcommerce.com/s-dqc1opj0ki/images/stencil/500x200/laperla2x_1583857066__43645.original.png',
                      width: 200,
                    ),
                  ),
                  SizedBox(height:_mediaQueryHeight*.18),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(20),
                          child: TextFormField(
                            style: TextStyle(color:Color.fromRGBO(157, 165, 179, 1), fontWeight:FontWeight.w400),
                              obscureText: false,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              onEditingComplete: () => _node.nextFocus(),
                              decoration: InputDecoration(
                                hintText: 'Correo',
                                hintStyle: TextStyle(color:Color(0xff636E7E),fontWeight:FontWeight.bold),
                                prefixIcon: Icon(Icons.email),
                                // suffixIcon: Icon(Icons.dehaze),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff979797),width: 1.0),
                                  borderRadius: BorderRadius.circular(10)
                                )
                              ),
                          ),
                        ),
                        SizedBox(height:0),
                        Container(
                          margin: EdgeInsets.only(left:20,right: 20,top:0),
                          child: TextFormField(
                            enableSuggestions: false,
                            autocorrect: false,
                            obscureText:_lockpassword,
                            style: TextStyle(color:Color.fromRGBO(157, 165, 179, 1), fontWeight:FontWeight.w400),
                            keyboardType: TextInputType.visiblePassword,
                            toolbarOptions: ToolbarOptions(copy:false,cut:false,paste:false,selectAll: false),
                            textInputAction: TextInputAction.done,
                            onEditingComplete: () => _node.nextFocus(),
                            decoration: InputDecoration(
                              hintText:'Contraseña',
                              hintStyle:TextStyle(color:Color(0xff636E7E),fontWeight:FontWeight.bold),
                              prefixIcon:Icon(Icons.lock),
                              suffixIcon:GestureDetector(
                                onTap: (){
                                    if(_lockpassword==true){
                                      setState(() => _lockpassword = false );
                                      
                                    }else if(_lockpassword==false){
                                      setState(() => _lockpassword = true );
                                    }
                                },
                                child: Icon(Icons.remove_red_eye,color: Colors.black,)
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff979797),width: 1.0),
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                          ), 
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:40),
                  MaterialButton(
                    elevation: 1,
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    height: 30,
                    minWidth: MediaQuery.of(context).size.width/1.2,
                    onPressed: (){
                      // Navigator.pushReplacementNamed(context, 'navigatorHome');
                      Navigator.of(context).pushNamedAndRemoveUntil('navigatorHome', (Route<dynamic> route) => false);
                    },
                    child: Text('Iniciar Sesión'),
                  ),
                  SizedBox(height:100),
                  GestureDetector(
                    onTap:(){
                      Navigator.pushReplacementNamed(context, 'register');
                    },
                    child: Container(
                      child: RichText(
                        text: TextSpan(
                          text: ' ¿No tienes una cuenta? ',
                          style: TextStyle(color:styleSheet.colorDark,fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(text: '¡Regístrate!', style: TextStyle(color:styleSheet.colorGreen ,fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}