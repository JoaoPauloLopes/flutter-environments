import 'dart:io';

enum HostSystem {
  ios,
  android,
}

HostSystem getHostSystem() {
  if (Platform.isIOS) {
    return HostSystem.ios;
  }

  if (Platform.isAndroid) {
    return HostSystem.android;
  }
  
  throw Exception('Non supported platform');
  
}