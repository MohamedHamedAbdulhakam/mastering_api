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
