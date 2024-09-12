import 'package:dio/dio.dart';
import 'package:happy_tech_mastering_api_with_flutter/core/errors/error_model.dart';

class ServerException implements Exception {
  final ErrorModel errorModel;

  ServerException({required this.errorModel});
}


void HandleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        throw ServerException(errorModel: e.response!.data);
      case DioExceptionType.sendTimeout:
        throw ServerException(errorModel: e.response!.data);
      case DioExceptionType.receiveTimeout:
        throw ServerException(errorModel: e.response!.data);
      case DioExceptionType.badCertificate:
        throw ServerException(errorModel: e.response!.data);
      case DioExceptionType.cancel:
        throw ServerException(errorModel: e.response!.data);
      case DioExceptionType.connectionError:
        throw ServerException(errorModel: e.response!.data);
      case DioExceptionType.unknown:
        throw ServerException(errorModel: e.response!.data);
      case DioExceptionType.badResponse:
        switch (e.response?.statusCode) {
          case 400: //'Bad Request');
            throw ServerException(errorModel: e.response!.data);
          case 401: //('Unauthorized');
            throw ServerException(errorModel: e.response!.data);
          case 403: //('Forbidden');
            throw ServerException(errorModel: e.response!.data);
          case 404: //('Not Found');
            throw ServerException(errorModel: e.response!.data);
          case 500: //('Internal Server Error');
            throw ServerException(errorModel: e.response!.data);
          case 409: //confident
            throw ServerException(errorModel: e.response!.data);
          case 422: //unprocessible entity
            throw ServerException(errorModel: e.response!.data);
          case 504: //server exception
            throw ServerException(errorModel: e.response!.data);
        }
    }
  }