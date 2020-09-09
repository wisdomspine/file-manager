import 'package:file_manager/finals.dart';
import 'package:file_manager/providers/UserProvider.dart';
import 'package:file_manager/view/components/AppBarUserAvatar.dart';
import 'package:file_manager/view/components/DrawerToggle.dart';
import 'package:file_manager/view/screens/AppDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String route = "Home Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DrawerToggle(),
        actions: [
          AppBarUserAvatar(
            image: kGetIt.get<UserProvider>().userAvatar,
          ),
        ],
      ),
      drawer: AppDrawer(),
    );
  }
}
