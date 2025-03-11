import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TokenService extends GetxService {
  static TokenService get to => Get.find();

  final _storage = GetStorage();
  final _token = RxString('');

  /// Called immediately after the service is registered.
  Future<TokenService> init() async {
    _token.value = _storage.read('token') ?? '';
    print("-------------------------------token");
    print(_token.value);
    return this;
  }

  Future<void> saveToken(String token) async {
    _token.value = token;
    print("------------------------------token");
    print(_token.value);
    await _storage.write('token', token);
    print(_storage.read("token"));
  }

  Future<void> saveRefreshToken(String refreshToken) async {
    _token.value = refreshToken;
    await _storage.write('refresh-token', refreshToken);
  }

  Future<void> clearToken() async {
    _token.value = '';
    await _storage.remove('token');
  }

  /// Check if token is available and non-empty.
  bool get hasToken => _token.value.isNotEmpty;

  /// (Optional) Expose the token publicly if needed
  String get token {
    if (_token.value.isNotEmpty) {
      return "Bearer ${_token.value}";
    } else {
      return "";
    }
  }
}
