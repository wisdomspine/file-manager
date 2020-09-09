import 'package:flutter/material.dart';

class DrawerToggle extends StatelessWidget {
  const DrawerToggle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: Theme.of(context).primaryIconTheme,
      child: IconButton(
        icon: Icon(Icons.sort),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    );
  }
}
