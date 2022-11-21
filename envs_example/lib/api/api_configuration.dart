import 'package:envs_example/api/api_base_endpoint.dart';
import 'package:envs_example/app/startup_app_configuration.dart';
import 'package:envs_example/utils/app_setup.dart';

class ApiConfiguration {
  final StartupConfiguration _startupConfiguration;

  ApiConfiguration(this._startupConfiguration);

  String baseUrl() {
    switch (_startupConfiguration.appEnvironment) {
      case AppEnvironment.development:
        return ApiBaseEndpoint.development;
      case AppEnvironment.staging:
        return ApiBaseEndpoint.staging;
      case AppEnvironment.production:
        return ApiBaseEndpoint.production;
    }
  }
}