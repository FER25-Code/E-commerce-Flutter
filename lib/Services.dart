import 'package:http/http.dart' as http;
import 'Product.dart';

class Services {
 static  var url = Uri.parse('http://localhost:8080/api/product/getproduct');

  static Future <List<Product>> getProduct() async{
    try{
      final reponse = await http.get(url,headers: {'Accept':'*/*'},);
      if(200==reponse.statusCode){
        final List<Product>products=productFromJson(reponse.body);
        return products;
      }else{
        return <Product>[];

      }
    }catch(e){
      return <Product>[];
    }





  }

}