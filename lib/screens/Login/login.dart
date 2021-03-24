import 'package:flutter/material.dart';
import 'package:laperla/utilities/setStatusBar.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();  
}

class _LoginState extends State<Login> {
  bool _lockpassword = true;
    

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
    final _node = FocusScope.of(context);
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
                  SizedBox(height:50),
                  Container(
                    child: Image.asset(
                      'assets/Logo_La_Perla-w.png',
                      width: 200,
                    ),
                  ),
                  // SizedBox(height:_mediaQueryHeight*.2),
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
                                hintStyle: TextStyle(color:Color(0xff636E7E),fontWeight:FontWeight.w500),
                                prefixIcon: Icon(Icons.email,color: Color(0xff636E7E),),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xffE8E8E8),width: 1.0),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white,width: 1.0),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: styleSheet.colorPurple,width: 1.0),
                                  borderRadius: BorderRadius.circular(10)
                                ),
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
                              hintStyle:TextStyle(color:Color(0xff636E7E),fontWeight:FontWeight.w500),
                              prefixIcon:Icon(Icons.lock,color: Color(0xff636E7E),),
                              suffixIcon:GestureDetector(
                                onTap: (){
                                    if(_lockpassword==true){
                                      setState(() => _lockpassword = false );
                                      
                                    }else if(_lockpassword==false){
                                      setState(() => _lockpassword = true );
                                    }
                                },
                                child: Icon(Icons.remove_red_eye,color:styleSheet.colorAmarillo,)
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffE8E8E8),width: 1.0),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,width: 1.0),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: styleSheet.colorPurple,width: 1.0),
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                          ), 
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:40),
                  MaterialButton(
                    elevation: 0,
                    padding: EdgeInsets.all(18),
                    color:Colors.white,
                    minWidth: MediaQuery.of(context).size.width/1.2,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white,width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: (){
                      Navigator.of(context).pushNamedAndRemoveUntil('navigatorHome', (Route<dynamic> route) => false);
                    },
                    child: Text('Iniciar Sesión',style: TextStyle(color: styleSheet.colorDark,fontWeight: FontWeight.bold),),
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
                          style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(text: '¡Regístrate!', style: TextStyle(color:styleSheet.colorAmarillo ,fontWeight: FontWeight.bold)),
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