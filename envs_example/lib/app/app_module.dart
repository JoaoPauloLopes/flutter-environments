import 'package:envs_example/home_module/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  static String get initialRoute => HomeModule.routeName;

  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute(HomeModule.routeName, module: HomeModule()),
  ];
}