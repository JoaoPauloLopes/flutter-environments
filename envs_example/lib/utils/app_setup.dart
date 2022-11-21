enum AppEnvironment {
  development,
  staging,
  production,
}


class AppSetup {

  AppEnvironment? env;

  AppSetup._privateConstructor();

  static final AppSetup _instance = AppSetup._privateConstructor();

  static AppSetup get instance => _instance;
  
}