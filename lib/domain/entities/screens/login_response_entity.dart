class LoginResponseEntity {
  final String refreshToken;
  final String accessToken;

  LoginResponseEntity({
    required this.refreshToken,
    required this.accessToken,
  });
}