

class AccountEnctity {

  final String token;

  AccountEnctity(this.token);

  factory AccountEnctity.fromJson(Map  json) => AccountEnctity(json['accessToken']);
}