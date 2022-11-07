import 'package:flutter_tdd_clean_architecture_solid_design_patterns/domain/entities/entities.dart';

class RemoteAccountModel {
  final String accessToken;

  RemoteAccountModel(this.accessToken);

  factory RemoteAccountModel.fromJson(Map json) => 
    RemoteAccountModel(json['accessToken']);

  AccountEnctity toEntity() => AccountEnctity(accessToken);
}
