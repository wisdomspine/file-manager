import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(EvaIcons.clock),
          title: SizedBox(),
        ),
        BottomNavigationBarItem(
          icon: Icon(EvaIcons.fileText),
          title: SizedBox(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: SizedBox(),
        ),
      ],
    );
  }
}
