import 'package:dio/dio.dart';
import 'package:happy_tech_mastering_api_with_flutter/cach/cache_helper.dart';
import 'package:happy_tech_mastering_api_with_flutter/core/api/end_points.dart';

class ApiInterceptors extends Interceptor // traficc policman
{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKey.token] =
        CacheHelper().getData(key: ApiKey.token) != null
            ? 'FOOKAPI${CacheHelper().getData(key: ApiKey.token)}'
            : null;
    super.onRequest(options, handler);
  }
}
