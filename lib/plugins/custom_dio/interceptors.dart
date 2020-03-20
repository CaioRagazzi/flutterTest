import 'package:dio/dio.dart';

class CustomInterceptors extends InterceptorsWrapper {
  
  @override
  Future onRequest(RequestOptions options) {
    print(options);
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    print(response);
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    print(err);
    return super.onError(err);
  }
}