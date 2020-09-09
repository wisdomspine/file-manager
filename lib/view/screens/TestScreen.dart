import 'package:file_manager/view/components/RoundedBottomRightContainer.dart';
import 'package:file_manager/view/components/RoundedTopLeftContainer.dart';
import 'package:flutter/material.dart';

///A screen for testing purpose
class TestScreen extends StatelessWidget {
  static const String route = "test screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: RoundedBottomRightContainer(),
          ),
          Expanded(
            child: RoundedTopLeftContainer(),
          ),
        ],
      ),
    );
  }
}
