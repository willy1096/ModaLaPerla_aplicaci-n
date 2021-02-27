
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:laperla/utilities/utils.dart' as styleSheet;

class DetailProductDescription  extends StatefulWidget {
  @override
  _DetailProductDescriptionState createState() => _DetailProductDescriptionState();
}

class _DetailProductDescriptionState extends State<DetailProductDescription> {
 int indexposition = 0; 
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder:(context, index) => Divider(color: Colors.white) ,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount:18,
        itemBuilder: (context,index){
          return  Row(
            children: <Widget>[
              _expandedCard(
                imgUrl:'https://ss550.liverpool.com.mx/xl/1090877842.jpg',
                price:(12*index+1).toString()+".00",
                title:'Zapato $index+lf',
                type:(index+1)%3 !=0 ? '1' : '0',
                position:index,
              ),
              _expandedCard(
                imgUrl:'https://ss550.liverpool.com.mx/xl/1090877842.jpg',
                price:(12*index+1).toString()+".00",
                title:'Zapato $index+lf',
                type:(index+1)%2 !=0 ? '1' : '0',
                position:index,
              ),
            ],
          );
      }

    );
  }

  Widget _expandedCard({String imgUrl, String price, String title, String type,int position}){
    
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right:5,left: 5),
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
        ),
        child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              
              Container(
                child:CachedNetworkImage(
                  imageUrl:imgUrl!=null?imgUrl:'',
                  fit: BoxFit.contain,
                  height: 250,
                  width: double.infinity,
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  placeholderFadeInDuration: Duration(milliseconds: 1500),
                  errorWidget: (context, url, error) => Icon(Icons.error,color: Colors.redAccent,),
                )
              ),
              Positioned(
                bottom: 0,
                left: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('$title',style: TextStyle(color:styleSheet.colorDark,fontWeight: FontWeight.w700,fontSize:17,fontFamily: 'Montserrat')),
                    Text('\$ $price MX',style: TextStyle(color:styleSheet.colorDark,fontWeight: FontWeight.w400,fontSize:16,fontFamily: 'Montserrat')),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: SizedBox(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          indexposition  = position;
                          print(indexposition);
                          print(position);
                        });
                      },
                      child: type=='1'?Icon(
                        Icons.favorite_border,color: styleSheet.colorGreen,
                      ):
                      Icon(
                        Icons.favorite,color: styleSheet.colorGreen,
                      )
                    ),
                  )
              ),
              type=='1'?
              Positioned(
                top: 0,
                left: 0,
                child: SizedBox(
                    child: Container(
                      padding: EdgeInsets.only(left:5.0,right: 5.0,bottom: 3.0,top:3.0),
                      decoration: BoxDecoration(
                        // borderRadius:BorderRadius.circular(10.0),
                        color: Colors.red
                      ),
                      child: Text('New',style: TextStyle(color:Colors.white),),
                    ),
                  )
              )
              :
              Container(),
          ],
        ),
      ),
    );
  }
}