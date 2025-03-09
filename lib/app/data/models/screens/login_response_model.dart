import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entities/screens/login_response_entity.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    @JsonKey(name: 'refresh') required String refreshToken,
    @JsonKey(name: 'access') required String accessToken,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

// Extension to convert Model to Entity
extension LoginResponseModelX on LoginResponseModel {
  LoginResponseEntity toEntity() => LoginResponseEntity(

    refreshToken: refreshToken,
    accessToken: accessToken,
  );
}
