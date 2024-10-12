import 'package:happy_tech_mastering_api_with_flutter/core/api/end_points.dart';

class UserModel {
  final String profilepic;
  final String email;
  final String phone;
  final Map<String, dynamic> address;

  UserModel(
      {required this.profilepic,
      required this.email,
      required this.phone,
      required this.address});
  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
        profilepic: jsonData[ApiKey.profilepic],
        email: jsonData[ApiKey.email],
        phone: jsonData[ApiKey.phone],
        address: jsonData[ApiKey.location]);
  }
}
