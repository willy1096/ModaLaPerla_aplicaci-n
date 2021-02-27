import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;
class ProductSlider extends StatefulWidget {
  const ProductSlider({Key key}) : super(key: key);
  @override
  _ProductSliderState createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  PageController _pageController = new PageController();
  int _page=1;
  List items = [
    'https://http2.mlstatic.com/D_819947-MLA32359622715_092019-O.jpg',
    'https://ae01.alicdn.com/kf/HTB1WD0Da.LrK1Rjy1zbq6AenFXan/Zapatos-casuales-para-Hombre-zapatillas-de-deporte-transpirables-Zapatos-para-Hombre-Zapatos-para-Hombre-Zapatos-para.jpg',
    'https://i.pinimg.com/originals/0d/07/8c/0d078c9cd2026aa1f6d12dcd26283882.jpg',
  ];
  
  @override
  void initState() {
    _pageController.addListener(() {
         setState(() {
        _page = _pageController.page.round() + 1;
       });
        print(_page);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black, // navigation bar color
      statusBarColor:   Colors.black,
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor:styleSheet.colorDark,
      appBar: AppBar(
        backgroundColor: styleSheet.colorDark,
        brightness: Brightness.dark,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:8.0,bottom: 8.0,right:20),
            child: Text('$_page / ${items.length}',style: TextStyle(fontSize: 20),),
          )
        ],
      ),
      body: Center(
        child: Container(
           child: PhotoViewGallery.builder(
             backgroundDecoration: BoxDecoration(
               color:styleSheet.colorDark
             ),
             enableRotation: true,
            scrollPhysics: const BouncingScrollPhysics(),
            pageController:_pageController,
            builder: (BuildContext context, int index) {
              return PhotoViewGalleryPageOptions(
                imageProvider:NetworkImage(items[index]),
                initialScale: PhotoViewComputedScale.contained,
                heroAttributes: PhotoViewHeroAttributes(tag:items[index]),
              );
            },
            itemCount:this.items.length,
            loadingBuilder: (context, event) => Center(
              child: Container(
                // color: Colors.yellow,
                width: 20.0,
                height: 20.0,
                child: CircularProgressIndicator(
                  value: event == null
                      ? 0
                      : event.cumulativeBytesLoaded / event.expectedTotalBytes,
                ),
              ),
            ),
            // backgroundDecoration: widget.backgroundDecoration,
            // pageController: widget.pageController,
            // onPageChanged: onPageChanged,
          )
        )
      )
    );
  }
}