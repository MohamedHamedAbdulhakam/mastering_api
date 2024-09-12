import 'package:dio/dio.dart';

class ApiInterceptors extends Interceptor // traficc policman
{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Accept-Language'] = 'en';
    super.onRequest(options, handler);
  }
}
