import 'package:dio/dio.dart';

class DioHelper{
  static late Dio dio;
   static init(){
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://retail.amit-learning.com/api/',
        receiveDataWhenStatusError: true,
      )
    );

  }
  static Future<Response> getData({required Url}) async{
    return await dio.get(Url);
  }

}
