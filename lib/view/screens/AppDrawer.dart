import 'package:file_manager/finals.dart';
import 'package:file_manager/view/providers/DrawerProvider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final DrawerProvider drawer = kGetIt.get<DrawerProvider>();
  @override
  Widget build(BuildContext context) {
    return DrawerController(
      dragStartBehavior: DragStartBehavior.start,
      child: Drawer(
        child: Container(
          color: Colors.red,
        ),
      ),
      alignment: DrawerAlignment.start,
      drawerCallback: (open) {
        print("object");
        drawer.next(open);
      },
    );
  }
}
