import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Product.dart';

class Services {

 static  var url = Uri.parse('http://192.168.1.111:8080/api/product/getproduct');

 static Future <List<Product>>getProduct() async{
    http.Response reponse = await http.get(url,headers: { "Accept": "application/json"},);
    List<Product>products=productFromJson(reponse.body);
    return products ;


  }








/*  static Future <List<Product>> getProduct() async{
    try{
      final reponse = await http.get(url,headers: {'Accept':"application/json"},);

      if(200==reponse.statusCode){
        final List<Product>products=productFromJson(reponse.body);

        return products;

      }else{
        return <Product>[];

      }
    }catch(e){
      return <Product>[];
    }





  }*/

}