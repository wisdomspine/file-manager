import 'package:file_manager/constants.dart';
import 'package:file_manager/view/screens/WelcomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'File Manager',
      theme: ThemeData(
        fontFamily: kFontFamily,
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        backgroundColor: kBackgroundColor,
        scaffoldBackgroundColor: kPrimaryColor,
        accentTextTheme: Theme.of(context).accentTextTheme.copyWith(
              bodyText1: TextStyle(
                color: kAccentTextColor,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
              bodyText2: TextStyle(
                color: kAccentTextColor,
                height: 1.5,
              ),
              headline5: TextStyle(
                color: kAccentTextColor,
                fontWeight: FontWeight.bold,
              ),
              headline1: TextStyle(
                color: kAccentTextColor,
                fontSize: 34.0,
              ),
            ),
        primaryTextTheme: Theme.of(context).primaryTextTheme.copyWith(
              bodyText1: TextStyle(
                color: kPrimaryTextColor,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
              bodyText2: TextStyle(
                color: kPrimaryTextColor,
                height: 1.5,
              ),
              headline5: TextStyle(
                color: kPrimaryTextColor,
                fontWeight: FontWeight.bold,
              ),
              headline1: TextStyle(
                color: kPrimaryTextColor,
                fontSize: 34.0,
              ),
            ),
        floatingActionButtonTheme:
            Theme.of(context).floatingActionButtonTheme.copyWith(
                  backgroundColor: kSecondaryAccentColor,
                  foregroundColor: kPrimaryTextColor,
                ),
        primaryIconTheme: IconThemeData(
          color: kAccentColor,
        ),
      ),
      initialRoute: WelcomeScreen.route,
      routes: {
        WelcomeScreen.route: (BuildContext context) => WelcomeScreen(),
      },
    );
  }
}
