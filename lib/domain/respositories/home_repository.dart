import 'package:dartz/dartz.dart';
import 'package:pdp_foundation/app/data/models/home/home_model.dart';

import '../../utils/errors/network_failure.dart';

abstract class HomeRepository {
  Future<Either<NetworkFailure, HomeModel>> home();
}
