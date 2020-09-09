import 'package:file_manager/finals.dart';
import 'package:file_manager/providers/UserProvider.dart';

class Loader {
  static void setup() async {
    kGetIt.registerSingleton<UserProvider>(UserProvider());
  }
}
