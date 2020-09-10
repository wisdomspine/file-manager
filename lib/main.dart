import 'package:file_manager/Loader.dart';
import 'package:file_manager/constants.dart';
import 'package:file_manager/view/screens/HomeScreen.dart';
import 'package:file_manager/view/screens/TestScreen.dart';
import 'package:file_manager/view/screens/WelcomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  //run necessary setup
  Loader.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'File Manager',
      debugShowCheckedModeBanner: false,
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
              headline4: TextStyle(
                color: kPrimaryTextColor,
                fontSize: 22,
              ),
            ),
        floatingActionButtonTheme:
            Theme.of(context).floatingActionButtonTheme.copyWith(
                  backgroundColor: kSecondaryAccentColor,
                  foregroundColor: kPrimaryTextColor,
                ),
        primaryIconTheme: IconThemeData(
          color: kPrimaryIconColor,
        ),
        accentIconTheme: IconThemeData(
          color: kAccentIconColor,
        ),
        appBarTheme: AppBarTheme(
          elevation: kAppBarElevation,
        ),
      ),
      initialRoute: HomeScreen.route,
      routes: {
        WelcomeScreen.route: (BuildContext context) => WelcomeScreen(),
        TestScreen.route: (BuildContext context) => TestScreen(),
        HomeScreen.route: (BuildContext context) => HomeScreen(),
      },
    );
  }
}
