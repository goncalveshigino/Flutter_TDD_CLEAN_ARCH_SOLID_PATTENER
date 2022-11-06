import 'package:meta/meta.dart';

import '../entities/entities.dart';

abstract class Autentication {

  Future<AccountEnctity> auth({
    @required String email,
    @required String password
  });
}