import 'package:faker/faker.dart';

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:flutter_tdd_clean_architecture_solid_design_patterns/domain/usecases/usecases.dart';

import 'package:flutter_tdd_clean_architecture_solid_design_patterns/data/usecases/remote_authentication.dart';
import 'package:flutter_tdd_clean_architecture_solid_design_patterns/data/http/http.dart';



class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  RemoteAuthentication sut;
  HttpClientSpy httpClient;
  String url;

  setUp(() {
    httpClient = HttpClientSpy();
    url = faker.internet.httpUrl();
    sut = RemoteAuthentication(httpClient: httpClient, url: url);
  });

  test('Should call HttpClient with correct values', () async {
    final params = AuthenticationParams(email: faker.internet.email(), secret: faker.internet.password());
    await sut.auth(params);

    verifyNever(httpClient.request(
    url: url, 
    method: 'post', 
    body: {'email': params.email, 'password': params.secret}
    ));
  });
}
