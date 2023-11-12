import 'package:dio/dio.dart';

class ApiService{
  static const baseUrl= 'https://www.hotelsgo.co/test/hotels';
  static final Dio _dio = Dio(
    BaseOptions(
      headers:  {'Content-Type':'application/json'},
      receiveDataWhenStatusError: true
    ),
  );

  static Future<List> getData({String? endPoint=''})async{
   Response res = await _dio.get(baseUrl+endPoint!);
   return res.data;
  }
}