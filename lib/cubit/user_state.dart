import 'package:happy_tech_mastering_api_with_flutter/models/user_moder.dart';

class UserState {}

final class UserInitial extends UserState {}

final class SingnInSuccess extends UserState {}

final class UploadProfilePicture extends UserState {}

final class SignInLoading extends UserState {}

final class SignInFailure extends UserState {
  final String errorMessage;

  SignInFailure({required this.errorMessage});
}

final class SingnUpSuccess extends UserState {
  final String message;

  SingnUpSuccess({required this.message});
}

final class SignUpLoading extends UserState {}

final class SignUpFailure extends UserState {
  final String errorMessage;

  SignUpFailure({required this.errorMessage});
}

final class GetUserSucces extends UserState {
  final UserModel user;

  GetUserSucces({required this.user});
}

final class GetUserLoading extends UserState {}

final class GetUserFailure extends UserState {
  final String errormessage;

  GetUserFailure({required this.errormessage});
}
