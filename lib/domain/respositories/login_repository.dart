import 'package:dartz/dartz.dart';
import 'package:pdp_foundation/domain/entities/screens/login_response_entity.dart';

import '../../app/data/models/screens/login_model.dart';
import '../../utils/errors/network_failure.dart';

abstract class LoginRepository {
  Future<Either<NetworkFailure, LoginResponseEntity>> login(LoginModel login);
}
