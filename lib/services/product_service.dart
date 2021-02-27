import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:laperla/models/product_model.dart';
import 'package:http/http.dart' as http;
class ProductProvider extends ChangeNotifier{


    Future<List<ProductSearchModel>> contactoSearch({String nombre})async{

      try{  
          // _dio.options.headers ={"Accept":"application/json","Authorization":"Bearer "+_presf.token};
          final resp = await http.get('/contacto/all?search='+nombre);
          final List<dynamic> decodedData  =  json.decode(resp.body);
          final List<ProductSearchModel> _contactoList = new List();
          decodedData.forEach((contactoElement) {
          final prodTemp = ProductSearchModel.fromJson(contactoElement);
            _contactoList.add(prodTemp);
        });
        return _contactoList;

      }catch(e){
        print(e);
        return [];
      }

    }
}