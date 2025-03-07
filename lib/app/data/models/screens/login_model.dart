import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdp_foundation/domain/entities/screens/login_entity.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    @JsonKey(name: 'device_id') required String deviceId,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    required String password,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}

extension LoginModelX on LoginModel {
  LoginEntity toEntity() => LoginEntity(
        deviceId: deviceId,
        phoneNumber: phoneNumber,
        password: password,
      );
}
