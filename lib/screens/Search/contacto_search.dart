import 'package:flutter/material.dart';
import 'package:laperla/services/product_service.dart';


class ProductSearchDelegate extends SearchDelegate{

  @override
  final String searchFieldLabel;
  

  ProductSearchDelegate(this.searchFieldLabel);

    @override
    List<Widget> buildActions(BuildContext context) {
    
      return [
        IconButton(
          icon:Icon(Icons.clear),
          onPressed:()=> this.query = ''
        )
      ];
     
    }
  
    @override
    Widget buildLeading(BuildContext context) {
     
      return  IconButton(
        icon:Icon(Icons.arrow_back_ios),
        onPressed: ()=> this.close(context, null)
      );
     
    }
  
    @override
    Widget buildResults(BuildContext context) {

      if(query.trim().length==0){
        return Center(child: Text('No hay resultados'));
      }

      final contactoSearch = new ProductProvider();
      return FutureBuilder(
        future: contactoSearch.contactoSearch(nombre:query),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot.hasData){
            final searchContact = snapshot.data;
            print(searchContact.length);
            return  ListView.separated(
                separatorBuilder: (BuildContext context,int index)=>Divider(height: 0,color: Colors.grey,),
                itemCount:searchContact.length,
                itemBuilder: (BuildContext context,int index)=>_showContact(context,searchContact[index],index)
              );

          }else{
              return Center( 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //   LoadingBouncingGrid.circle(
                    //   borderColor: Colors.white,
                    //   backgroundColor: Colors.redAccent,
                    //   size: 20.0,
                    // ),
                    Text('Buscando...',style: TextStyle(letterSpacing: 2.5,fontWeight: FontWeight.bold),)
                  ]
                )
              );
          }
        }
      );
      
    }
  
  @override
  Widget buildSuggestions(BuildContext context) {
    return ListTile(title:Text(''));
  }



  Widget _showContact(context, contactoElement,index){
  //  var myProvider = Provider.of<ProductProvider>(context);
    return  Container(
      child: FlatButton(
        focusColor: Colors.white,
        splashColor: Colors.white,
        color: Colors.white,
            padding: EdgeInsets.only(top: 8,bottom: 8),
            onPressed: (){
              // myProvider.chageElement(element:contactoElement.id);
              Navigator.pushNamed(context, '/contacto-detalle',arguments:contactoElement.id);
            },
            child: Card(
                  elevation: 0,
                  color:Colors.white,
                  child: ListTile(
                    leading:Text('cargando..'),
                    // ContactoCircle().contactoIcono(
                    //   color:"${contactoElement.color}",
                    //   nombreC:"${contactoElement.name}",
                    //   apellidoC:"${contactoElement.lastName}"
                    // ),
                    title:Container(child: Text("${contactoElement.name} ${contactoElement.lastName}",style: TextStyle(fontSize:18,color:Color.fromARGB(255, 31, 38, 50),fontWeight: FontWeight.w700))), 
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Asignado a: ',style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 92, 92, 92))),
                        Text("${contactoElement.userName} ${contactoElement.userSurname }",style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 92, 92, 92),fontWeight: FontWeight.w700)),
                      ],
                    )
                  ),
                )      
            ),
    );
  }

}