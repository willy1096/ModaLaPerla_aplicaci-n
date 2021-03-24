import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laperla/utilities/setStatusBar.dart';
import 'package:laperla/widgets/menu/favorite/card_product_menu.dart';
import 'package:laperla/widgets/menu/favorite/header_menu.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;

class MenuNotification extends StatefulWidget {
  @override
  _MenuNotificationState createState() => _MenuNotificationState();
}

class _MenuNotificationState extends State<MenuNotification> {
  @override
  void initState() {
    getChangeStatusTransparent();
    super.initState();
  }

  @override
  void dispose() {
    getChangeStatusTransparent();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
          physics: BouncingScrollPhysics(),
           slivers: [
                SliverAppBar(
                  backwardsCompatibility: true,
                  elevation: 1,
                  actionsIconTheme: IconThemeData(color:styleSheet.colorDark),
                  iconTheme:IconThemeData(color:Colors.white),
                  brightness: Brightness.dark,
                  backgroundColor: styleSheet.colorPurple,
                  floating: false,
                  snap: false,
                  pinned: true,
                  stretch: true,
                  systemOverlayStyle:SystemUiOverlayStyle.light,
                  onStretchTrigger: () {
                    return;
                  },
                  expandedHeight: 170.0,
                  flexibleSpace: FlexibleSpaceBar(
                    stretchModes: <StretchMode>[
                      StretchMode.zoomBackground,
                      StretchMode.blurBackground,
                      StretchMode.fadeTitle,
                    ],
                    centerTitle: true,
                    title: Text('Notificaciones',style: TextStyle(color: Colors.white,fontFamily: 'Roboto',fontSize: 16,fontWeight: FontWeight.bold),),
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                         HeaderMenu(
                            titleHeader: '',
                          ),
                      ],
                    ),
                  ),
                ),
                SliverList(
                 delegate: SliverChildListDelegate([
                  SingleChildScrollView(
                    child: ListView.builder(
                      padding: EdgeInsets.all(0),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder:(context,int i){
                        return FadeInLeft(
                          child: CardMenuProduct(
                            marginbutton: 0.0,
                            radiusTop: 0.0,
                            radiusbutton: 0.0,
                            ultimoitem: 10,
                            marginleft: 0.0,
                            marginright: 0.0,
                            index: i,
                          )
                        );
                      }
                    )
                  )
                ])
              ),
           ],

      )
    );
  }
  
}

