import 'package:file_manager/Keys.dart';
import 'package:file_manager/finals.dart';
import 'package:file_manager/providers/UserProvider.dart';
import 'package:file_manager/view/providers/DrawerProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_core/core.dart';

class Loader {
  static Future<void> setup() async {
    kGetIt.registerSingleton<UserProvider>(UserProvider());
    kGetIt.registerSingleton<RouteObserver<PageRoute>>(
      RouteObserver<PageRoute>(),
    );
    kGetIt.registerSingleton<DrawerProvider>(DrawerProvider());
    await _loadKeys();
    await _registerKeys();
  }

  static Future<void> _loadKeys() async {
    Keys keys = Keys.fromJson(await rootBundle.loadString("keys.json"));
    kGetIt.registerSingleton<Keys>(keys);
  }

  static Future<void> _registerKeys() async {
    SyncfusionLicense.registerLicense(kGetIt.get<Keys>().syncfusionLicense);
  }
}
