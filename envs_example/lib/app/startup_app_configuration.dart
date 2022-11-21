import 'package:envs_example/utils/app_setup.dart';
import 'package:envs_example/utils/host_system.dart';

class StartupConfiguration {
  final AppEnvironment appEnvironment;
  final HostSystem hostSystem;
  final String appName;

  const StartupConfiguration({required this.appEnvironment, required this.hostSystem, required this.appName});

  factory StartupConfiguration.development(HostSystem hostSystem) => StartupConfiguration(appEnvironment: AppEnvironment.development, hostSystem: hostSystem, appName: 'app_development');

  factory StartupConfiguration.staging(HostSystem hostSystem) => StartupConfiguration(appEnvironment: AppEnvironment.staging, hostSystem: hostSystem, appName: 'app_staging');

  factory StartupConfiguration.production(HostSystem hostSystem) => StartupConfiguration(appEnvironment: AppEnvironment.production, hostSystem: hostSystem, appName: 'app_production');

}