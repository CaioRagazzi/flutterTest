import 'package:dio/dio.dart';
import './interceptors.dart';

class CustomDio {
  final Dio client;

  CustomDio(this.client){
    client.options.baseUrl = "https://api.themoviedb.org/3/";
    client.interceptors.add(CustomInterceptors());
  }
  
}