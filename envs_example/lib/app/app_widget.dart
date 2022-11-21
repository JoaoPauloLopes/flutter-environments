
import 'package:envs_example/app/app_module.dart';
import 'package:envs_example/app/startup_app_configuration.dart';
import 'package:envs_example/utils/app_setup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatefulWidget {
  final StartupConfiguration _startupConfiguration;

  const AppWidget({super.key, required startupConfiguration}) : _startupConfiguration = startupConfiguration;

  @override
  State<AppWidget> createState() => _AppWidgetState();

}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    AppSetup.instance.env = widget._startupConfiguration.appEnvironment;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppModule.initialRoute,
      title: widget._startupConfiguration.appName,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
    ).modular();
  }
}