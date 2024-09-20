import 'package:happy_tech_mastering_api_with_flutter/core/api/end_points.dart';

class SignInModel {
  final String message;
  final String token;

  SignInModel({required this.message, required this.token});
  factory SignInModel.fromjson(Map<String, dynamic> jsonData) {
    return SignInModel(message: jsonData[ApiKey.message], token: jsonData[ApiKey.token]);
  }
}
