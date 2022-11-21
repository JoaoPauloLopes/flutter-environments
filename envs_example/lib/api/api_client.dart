import 'package:envs_example/api/api_configuration.dart';


class ApiClient {

  final ApiConfiguration _apiConfiguration;

  ApiClient(apiConfiguration, httpClient) : _apiConfiguration = apiConfiguration;

  Uri uri(String endpoint, {Map<String, dynamic>? queryParameters}) =>
      Uri.parse('${_apiConfiguration.baseUrl()}/$endpoint')
          .resolveUri(Uri(queryParameters: queryParameters));

  Future<Object> get(String endpoint, Map<String, dynamic> queryParameters, Map<String, dynamic> headers) {
    return Future<Object>.value(Object());
  }

  Future<Object> post(String endpoint, Map<String, dynamic> queryParameters, Map<String, dynamic> headers) {
    return Future<Object>.value(Object());
  }

  Future<Object> delete(String endpoint, Map<String, dynamic> queryParameters, Map<String, dynamic> headers) {
    return Future<Object>.value(Object());
  }

    Future<Object> put(String endpoint, Map<String, dynamic> queryParameters, Map<String, dynamic> headers) {
    return Future<Object>.value(Object());
  }
}
