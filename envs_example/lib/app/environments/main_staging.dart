import 'package:envs_example/app/app_module.dart';
import 'package:envs_example/app/app_widget.dart';
import 'package:envs_example/app/startup_app_configuration.dart';
import 'package:envs_example/utils/host_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';


void main() {
  runApp(
    ModularApp(
      module: AppModule(), 
      child: AppWidget(
            startupConfiguration: StartupConfiguration.staging(getHostSystem())
      )
    )
  );
}
// flutter run -t lib/app/environments/main_staging.dart --flavor staging --debug