import 'package:meta/meta.dart';

import '../entities/entities.dart';

abstract class Autentication {

  Future<AccountEnctity> auth(AuthenticationParams params);
}



class AuthenticationParams {
  final String email;
  final String secret;

  AuthenticationParams({
    @required this.email,
    @required this.secret
  });
